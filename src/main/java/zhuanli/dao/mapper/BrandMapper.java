package zhuanli.dao.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import zhuanli.domain.Brand;
import zhuanli.domain.BrandCategory;
import zhuanli.domain.BrandSearchCondition;
import zhuanli.domain.Page;

public interface BrandMapper {

	int getBrandsCountByCategory(int categoryId);

	List<Brand> getBrandsByCategory(@Param("categoryId") int categoryId,@Param("page") Page page);

	Brand getbrandDetail(int brandId);

	BrandCategory getBrandCategoryById(int categoryId);

	List<Brand> getAllBrandsByCategory(int categoryId);

	List<Brand> getRecommendBrands(int brandId);

	int getAllBrandsCount();

	List<Brand> getAllBrandsList(Page page);

	List<Brand> getIndexRecommendBrands();
	
	List<Brand> getSearchBrandsList(BrandSearchCondition brandSearchCondition);
	
	int getSearchBrandsCount(BrandSearchCondition brandSearchCondition);

	List<Brand> getIndexSlideBrands();

	List<Brand> getAllBrands();



}
