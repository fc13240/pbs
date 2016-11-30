package zhuanli.dao.mybatis;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import zhuanli.dao.BrandDao;
import zhuanli.dao.mapper.BrandMapper;
import zhuanli.domain.Brand;
import zhuanli.domain.BrandCategory;
import zhuanli.domain.BrandSearchCondition;
import zhuanli.domain.Page;


public class BrandMybatisDao extends SqlSessionDaoSupport implements BrandDao {
	private BrandMapper brandMapper;
	
	public void setBrandMapper(BrandMapper brandMapper) {
		this.brandMapper = brandMapper;
	}

	@Override
	public int getBrandsCountByCategory(int categoryId) {
		return brandMapper.getBrandsCountByCategory(categoryId);
	}

	@Override
	public List<Brand> getBrandsByCategory(int categoryId, Page page) {
		return brandMapper.getBrandsByCategory(categoryId, page);
	}

	@Override
	public Brand getbrandDetail(int brandId) {
		return brandMapper.getbrandDetail(brandId);
	}

	@Override
	public BrandCategory getBrandCategoryById(int categoryId) {
		return brandMapper.getBrandCategoryById(categoryId);
	}

	@Override
	public List<Brand> getAllBrandsByCategory(int categoryId) {
		return brandMapper.getAllBrandsByCategory(categoryId);
	}

	@Override
	public List<Brand> getRecommendBrands(int brandId) {
		return brandMapper.getRecommendBrands(brandId);
	}

	@Override
	public int getAllBrandsCount() {
		return brandMapper.getAllBrandsCount();
	}

	@Override
	public List<Brand> getAllBrandsList(Page page) {
		return brandMapper.getAllBrandsList(page);
	}

	@Override
	public List<Brand> getIndexRecommendBrands() {
		return brandMapper.getIndexRecommendBrands();
	}

	@Override
	public List<Brand> getSearchBrandsList(BrandSearchCondition brandSearchCondition) {
		return brandMapper.getSearchBrandsList(brandSearchCondition);
	}
	
	@Override
	public int getSearchBrandsCount(BrandSearchCondition brandSearchCondition) {
		return brandMapper.getSearchBrandsCount(brandSearchCondition);
	}

	@Override
	public List<Brand> getIndexSlideBrands() {
		return brandMapper.getIndexSlideBrands();
	}
}
