package zhuanli.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.lingala.zip4j.core.ZipFile;
import zhuanli.domain.FirstColumn;
import zhuanli.domain.GoodsDetail;
import zhuanli.domain.Notice;
import zhuanli.domain.Page;
import zhuanli.domain.Patent;
import zhuanli.domain.PatentSearchCondition;
import zhuanli.domain.SaleGood;
import zhuanli.domain.User;
import zhuanli.domain.ContactAddress;
import zhuanli.service.PatentService;
import zhuanli.util.WebUtils;


@RequestMapping(path="/patent")
@Controller
public class PatentController {
	private PatentService patentService;

	@Autowired
	public PatentController(PatentService patentService) {
		this.patentService = patentService;
	}

	
	@RequestMapping(path="/index",method=RequestMethod.GET)
	public String getPatentsIndex(Page page, Model model) {
		if (page.getCurrentPage() <= 0) {
			page.setCurrentPage(1);
		}
		int patent_column_id= page.getId();
		List<FirstColumn>  AllColumns=patentService.selectAllColumns();
		List<Patent> patent_list=patentService.getSecoundColumnPage(page);
		Map<String, List<GoodsDetail>> recommendPatents=patentService.getIndexRecommendPatents();
		List<GoodsDetail> qualityGoods=patentService.getQualityGoods();
		model.addAttribute("AllColumns", AllColumns);
		model.addAttribute("first_column_id", patent_column_id);
		model.addAttribute("patents", patent_list);
		model.addAttribute("page",page);
		model.addAttribute("recommendPatents", recommendPatents);
		model.addAttribute("qualityGoods",qualityGoods);
		return "patent_index";
	}	
	
	@RequestMapping(path="/list",method=RequestMethod.GET)
	public String getPatents(Page page, Model model) {
		if (page.getCurrentPage() <= 0) {
			page.setCurrentPage(1);
		}
		int patent_column_id= page.getId();
		List<FirstColumn>  AllColumns=patentService.selectAllColumns();
		List<Patent> patent_list=patentService.getSecoundColumnPage(page);
		
		model.addAttribute("AllColumns", AllColumns);
		model.addAttribute("first_column_id", patent_column_id);
		model.addAttribute("patents", patent_list);
		model.addAttribute("page",page);
		return "patent_list";
	}

	@RequestMapping(path="/sublist",method=RequestMethod.GET)
	public String getPatentSecound(Page page, Model model) {
		if (page.getCurrentPage() <= 0) {
			page.setCurrentPage(1);
		}
		int patent_second_column_id=page.getId();
		List<FirstColumn>  AllColumns=patentService.selectAllColumns();
		
		List<Patent> patents = patentService.getSecoundPatentPage(page);
		String currentTypeName=patentService.getCurrentTypeName(patent_second_column_id);
		int	  first_column_id=patentService.getFirstId(patent_second_column_id);
		
		model.addAttribute("AllColumns", AllColumns);
		model.addAttribute("first_column_id", first_column_id);		
		model.addAttribute("patents", patents);
		model.addAttribute("currentTypeName", currentTypeName);
		model.addAttribute("page",page);
		return "patent_list";
	}		
	


	@RequestMapping(path="/getPatentDetailByPatentId",method=RequestMethod.GET)
	public String getPatentDetailByPatentId(@RequestParam("patentId") int patentId , Model model) {
		SaleGood good =patentService.getPatentDetailByPatentId(patentId);
		List<SaleGood> recommedPatents=patentService.getRecommedPatents(patentId);
		model.addAttribute("patent", good);
		model.addAttribute("recommedPatents", recommedPatents);
		return "patent_detail";
	}
	
	@RequestMapping(path="/detail",method=RequestMethod.GET)
	public String getPatentsDetail(@RequestParam("patentno") long patentId , Model model) {
		SaleGood patent =patentService.getPatentDetailByPatentId((int)patentId);
		List<Notice> notices=patentService.getNoticeByPatentno(patentId);
		model.addAttribute("notices", notices);
		model.addAttribute("patent", patent);
		return "patent_detail";
	}

	@RequestMapping(path="/download", method=RequestMethod.GET)
	public void downloadNotice(@RequestParam("notice")int noticeId, HttpServletResponse response,HttpServletRequest request) throws IOException {
		response.setContentType("application/zip");
		
		Notice notice = patentService.getNoticeById(noticeId);
		ZipFile noticeZipFile = patentService.createNoticeZipFile(notice);
		String dispatchDate = new SimpleDateFormat("yyyy-MM-dd").format(notice.getDispatchDate());
		String downloadFileName = dispatchDate + URLEncoder.encode(notice.getName(), "UTF8") + 
				notice.getPatent().getApp_no() + URLEncoder.encode(notice.getPatent().getPatent_name(), "UTF8");
		
		
		if("FF".equals(getBrowser(request))){
			downloadFileName =dispatchDate+ new String(notice.getName().getBytes("UTF-8"),"iso-8859-1")+
					notice.getPatent().getApp_no()+new String(notice.getPatent().getPatent_name().getBytes("UTF-8"),"iso-8859-1");
		}
		response.setHeader("Content-Disposition", "attachment;filename=" + downloadFileName + ".zip");
		response.setContentLength((int)noticeZipFile.getFile().length());
		int BUFFER_SIZE = 8192;
		byte[] buffer = new byte[BUFFER_SIZE];
		try (OutputStream out = response.getOutputStream(); 
				FileInputStream fis = new FileInputStream(noticeZipFile.getFile())) {
			int bytesRead = -1;
			while ((bytesRead = fis.read(buffer)) != -1) {
				out.write(buffer, 0, bytesRead);
			}
			out.flush();
		}
	}
	
	private String getBrowser(HttpServletRequest request){
	    String UserAgent = request.getHeader("USER-AGENT").toLowerCase();
	    if(UserAgent!=null){
	        if (UserAgent.indexOf("msie") >=0 ) return "IE";
	        if (UserAgent.indexOf("firefox") >= 0) return "FF";
	    }
	    return null;
	}
	
	@RequestMapping(path="/exportPatents", method=RequestMethod.GET)
	public void exportFeesAllMessage(HttpServletResponse response) throws IOException {
		response.setContentType("application/vnd.ms-excel");
		response.setHeader("X-FRAME-OPTIONS", "SAMEORIGIN");

		
		String exportExcelName = System.currentTimeMillis() + ".xls";
		String exportExcelPath = patentService.PatentExportExcel(exportExcelName);
		File excelFile = new File(exportExcelPath);
		response.setContentLength((int)excelFile.length());
		response.setHeader("Content-Disposition", "attachment;filename=" + exportExcelName);
		
		int BUFFER_SIZE = 8192;
		byte[] buffer = new byte[BUFFER_SIZE];
		try (OutputStream out = response.getOutputStream(); 
				BufferedInputStream bis = new BufferedInputStream(new FileInputStream(excelFile))) {
			int bytesRead = -1;
			while ((bytesRead = bis.read(buffer)) != -1) {
				out.write(buffer, 0, bytesRead);
			}
			out.flush();
		}
	}	
	
	@RequestMapping(path="/getAlreadySalePatent")
	public String getAlreadySalePatent(HttpSession session,Page page,Model model){
		if (page.getCurrentPage() <= 0) {
			page.setCurrentPage(1);
		}
		page.setPageSize(20);
		int totalRecords = 0;
		totalRecords = patentService.getAlreadySalePatentCount();
		page.setTotalRecords(totalRecords);
		List<SaleGood> goods = patentService.getAlreadySalePatent(page);
		model.addAttribute("goods", goods);
		model.addAttribute("page", page);
		return "already_sale_patents_list";
		
	}
	
	@RequestMapping(path="/getSearchAlreadySalePatent")
	public String getSearchAlreadySalePatent(PatentSearchCondition searchCondition,Model model){
		Page page = searchCondition.getPage();
		if (page.getCurrentPage() <= 0) {
			page.setCurrentPage(1);
		}
		page.setPageSize(20);
		int totalRecords = 0;
		totalRecords = patentService.getSearchAlreadySalePatentCount(searchCondition);
		page.setTotalRecords(totalRecords);
		List<SaleGood> goods = patentService.getSearchAlreadySalePatent(searchCondition);
		model.addAttribute("goods", goods);
		model.addAttribute("searchCondition", searchCondition);
		model.addAttribute("page", page);
		return "already_sale_patents_list";
		
	}
	
	
	@RequestMapping(path="getPatentDetail")
	public String getPatentDetail(long patentId,HttpSession session,Page page, Model model){
		SaleGood good = patentService.getAlreadSalePatentDetail(patentId);
		int shopType =good.getFirstColumn().getId();
		page.setPageSize(WebUtils.getPageSize(session));
		if(page.getCurrentPage()<1){
			page.setCurrentPage(1);
		}
		int totalCount=(int)patentService.getPatentsByShopTypeCount(shopType);
		page.setTotalRecords(totalCount);
		List<Patent> patents = patentService.getPatentsByShopType(shopType,page); 
		List<SaleGood> recommedPatents=patentService.getRecommedPatents(patentId);
		User transferorUser = patentService.getGoodTransferorUser(good.getTransferor());
		ContactAddress contactAddress = null;
		if(transferorUser != null) {
			contactAddress = patentService.getUserDefaultContactAddress(transferorUser.getUserId());
		}
		model.addAttribute("recommedPatents", recommedPatents);
		model.addAttribute("good",good);
		model.addAttribute("patents", patents);
		model.addAttribute("page", page);
		model.addAttribute("shopType", shopType);
		model.addAttribute("transferorUser", transferorUser);
		model.addAttribute("contactAddress", contactAddress);
		return "patent_detail";
	}
	
	@RequestMapping(path="/getGoodListBySecondColumn")
	public String getGoodListBySecondType(int secondColumnId,String secondColumnName, Page page, Model model){
		if(page.getCurrentPage()<=1){
			page.setCurrentPage(1);
		}
		page.setPageSize(20);
		int totalRecords = patentService.getPatentListBySecondColumnIdCount(secondColumnId);
		List<SaleGood> goods = patentService.getPatentListBySecondColumnId(secondColumnId,page);
		page.setTotalRecords(totalRecords);
		model.addAttribute("secondColumnName",secondColumnName);
		model.addAttribute("goods",goods);
		model.addAttribute("page",page);
		model.addAttribute("secondColumnId",secondColumnId);
		return "patents_list_by_second_column";
	}
	
	@RequestMapping(path="/getSearchGoodListBySecondColumn")
	public String getGoodListBySecondType(PatentSearchCondition searchCondition,String secondColumnName, Model model){
		Page page = searchCondition.getPage();
		Integer secondColumnId =searchCondition.getSecondColumnId();
		if(page.getCurrentPage()<=1){
			page.setCurrentPage(1);
		}
		page.setPageSize(20);
		int totalRecords = patentService.getSearchPatentListBySecondColumnIdCount(searchCondition);
		List<SaleGood> goods = patentService.getSearchPatentListBySecondColumnId(searchCondition);
		page.setTotalRecords(totalRecords);
		model.addAttribute("goods",goods);
		model.addAttribute("page",page);
		model.addAttribute("searchCondition",searchCondition);
		model.addAttribute("secondColumnName",secondColumnName);
		model.addAttribute("secondColumnId",secondColumnId);
		return "patents_list_by_second_column";
	}
	
}
