package zhuanli.service;

import zhuanli.domain.Brand;
import zhuanli.domain.BrandCategory;

import java.util.List;
import zhuanli.domain.Page;

public interface BrandService {

	int getBrandsCountByCategory(int categoryId);

	List<Brand> getBrandsByCategory(int categoryId, Page page);

	Brand getbrandDetail(int brandId);

	BrandCategory getBrandCategoryById(int categoryId);

}
