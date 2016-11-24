package zhuanli.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import zhuanli.domain.Page;
import zhuanli.domain.Brand;
import zhuanli.domain.BrandCategory;
import zhuanli.service.BrandService;
import zhuanli.util.WebUtils;

import java.util.List;


@Controller
@RequestMapping(path="/brand")
public class BrandController {
	private BrandService brandService;
	
	@Autowired
	public BrandController(BrandService brandService) {
		this.brandService = brandService;
		
	}
	
	@RequestMapping(path="/showBrandsList")
	public String showBrandsList(int categoryId, Page page, Model model, HttpSession session) {
		page.setPageSize(WebUtils.getPageSize(session));
		if(page.getCurrentPage()<1){
			page.setCurrentPage(1);
		}
		int totalCount=(int)brandService.getBrandsCountByCategory(categoryId);
		page.setTotalRecords(totalCount);
		List<Brand> brands = brandService.getBrandsByCategory(categoryId,page); 
		BrandCategory brandCategory = brandService.getBrandCategoryById(categoryId);
		model.addAttribute("page", page);
		model.addAttribute("brands", brands);
		model.addAttribute("brandCategory", brandCategory);
		return "brands_list";
	}
	
	@RequestMapping(path="/getbrandDetail")
	public String getbrandDetail(int brandId, Model model) {
		Brand brand = brandService.getbrandDetail(brandId); 
		model.addAttribute("brand", brand);
		return "brand_detail";
	}

}
