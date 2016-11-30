package zhuanli.service.impl;


import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import zhuanli.service.constants.Settings;
import zhuanli.dao.BrandDao;
import zhuanli.domain.Brand;
import zhuanli.domain.BrandCategory;
import zhuanli.domain.BrandSearchCondition;
import zhuanli.domain.Page;
import zhuanli.service.BrandService;
import zhuanli.service.utils.BrandsExcelGenerator;

public class BrandServiceImpl implements BrandService {
	private BrandDao brandDao;
	
	public BrandServiceImpl(BrandDao brandDao) {
		this.brandDao = brandDao;
	}

	@Override
	public int getBrandsCountByCategory(int categoryId) {
		return brandDao.getBrandsCountByCategory(categoryId);
	}

	@Override
	public List<Brand> getBrandsByCategory(int categoryId, Page page) {
		return brandDao.getBrandsByCategory(categoryId, page);
	}

	@Override
	public Brand getbrandDetail(int brandId) {
		return brandDao.getbrandDetail(brandId);
	}

	@Override
	public BrandCategory getBrandCategoryById(int categoryId) {
		return brandDao.getBrandCategoryById(categoryId);
	}
	
	@Override
	public String generateBrandsExportExcel(int categoryId, String exportExcelName) throws IOException {
		List<Brand> brands = brandDao.getAllBrandsByCategory(categoryId);
		String exportExcelPath = Settings.TEMP_DIR + exportExcelName;
		BrandsExcelGenerator.writeBrandRecordsToExcel(brands, exportExcelPath);
		return exportExcelPath;
	}

	@Override
	public List<Brand> getRecommendBrands(int brandId) {
		return brandDao.getRecommendBrands(brandId);
	}

	@Override
	public int getAllBrandsCount() {
		return brandDao.getAllBrandsCount();
	}

	@Override
	public List<Brand> getAllBrandsList(Page page) {
		return brandDao.getAllBrandsList(page);
	}

	@Override
	public Map<String, List<Brand>> getIndexRecommendBrands() {
		List<Brand> brands = brandDao.getIndexRecommendBrands();
		Map<String, List<Brand>> recommendBrands = new HashMap<String, List<Brand>>(); 

		for(Brand brand: brands) {
			String brandCatId = String.valueOf(brand.getBrandCategory().getCategoryId());
			if (recommendBrands.containsKey(brandCatId)) {
				recommendBrands.get(brandCatId).add(brand);
			} else {
				List<Brand> brandList = new ArrayList<>();
				brandList.add(brand);
				recommendBrands.put(brandCatId, brandList);
			}
		}
		return recommendBrands;
	}
	
	@Override
	public List<Brand> getSearchBrandsList(BrandSearchCondition brandSearchCondition) {
		return brandDao.getSearchBrandsList(brandSearchCondition);
	}
	
	@Override
	public int getSearchBrandsCount(BrandSearchCondition brandSearchCondition) {
		return brandDao.getSearchBrandsCount(brandSearchCondition);
	}

	@Override
	public List<Brand> getIndexSlideBrands() {
		return brandDao.getIndexSlideBrands();
	}

	@Override
	public List<Brand> getAllBrands() {
		return brandDao.getAllBrands();
	}

	
}
