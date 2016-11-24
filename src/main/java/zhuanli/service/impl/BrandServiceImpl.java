package zhuanli.service.impl;


import java.util.List;

import zhuanli.dao.BrandDao;
import zhuanli.domain.Brand;
import zhuanli.domain.BrandCategory;
import zhuanli.domain.Page;
import zhuanli.service.BrandService;

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

	
}
