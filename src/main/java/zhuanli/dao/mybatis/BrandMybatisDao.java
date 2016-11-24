package zhuanli.dao.mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import zhuanli.dao.BrandDao;
import zhuanli.dao.mapper.BrandMapper;
import zhuanli.domain.Brand;
import zhuanli.domain.BrandCategory;
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
}
