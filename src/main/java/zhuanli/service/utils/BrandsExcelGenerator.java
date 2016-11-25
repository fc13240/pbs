package zhuanli.service.utils;

import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import zhuanli.domain.Brand;

public class BrandsExcelGenerator {
	public static void writeBrandRecordsToExcel(List<Brand> brands, String resultExcelPath) throws IOException {
		final String SHEET_NAME = "商标清单表";
		FileOutputStream resultExcelOutputStream = new FileOutputStream(resultExcelPath);
		HSSFWorkbook workbook = new HSSFWorkbook();
		
		HSSFSheet sheet = workbook.createSheet(SHEET_NAME);

		HSSFRow creatRowName = sheet.createRow(0);
		writelRowName(creatRowName);
		for (int i = 0; i < brands.size(); i++) {
			Brand brand = brands.get(i);
			HSSFRow row = sheet.createRow(i + 1);
			writeBrandRecordToRow(brand, row);
			
		}

		workbook.write(resultExcelOutputStream);
		workbook.close();
	}	
	
	private static void writelRowName(HSSFRow row) {
		HSSFCell addressCellRowName = row.createCell(0);
		addressCellRowName.setCellValue("注册/登记地");
		
		HSSFCell caseStatusCellRowName = row.createCell(1);
		caseStatusCellRowName.setCellValue("案件状态");
		
		HSSFCell categoryCellCellRowName = row.createCell(2);
		categoryCellCellRowName.setCellValue("国际分类号");
		
		HSSFCell brandNoCellRowName = row.createCell(3);		
		brandNoCellRowName.setCellValue("申请号/注册号");
		
		HSSFCell  nameCellRowName= row.createCell(4);
		nameCellRowName.setCellValue("商标名称");
		
		HSSFCell combinationTypeCellRowName = row.createCell(5);
		combinationTypeCellRowName.setCellValue("组合类型");		
		
		HSSFCell similarNoCellRowName = row.createCell(6);
		similarNoCellRowName.setCellValue("类似群号");
		
		HSSFCell scopeCellRowname = row.createCell(7);
		scopeCellRowname.setCellValue("核定使用商品");
		
		HSSFCell transactionModeCellRowName = row.createCell(8);
		transactionModeCellRowName.setCellValue("交易类型");
		
		HSSFCell priceCellRowName = row.createCell(9);
		priceCellRowName.setCellValue("价格（元）");
		
		HSSFCell appPersonCellRowName = row.createCell(10);
		appPersonCellRowName.setCellValue("专有权人");
		
		HSSFCell appDateCellRowName = row.createCell(11);
		appDateCellRowName.setCellValue("申请日");
		
		HSSFCell publishDateCellRowName = row.createCell(12);
		publishDateCellRowName.setCellValue("注册公告日");
		
		HSSFCell startDateCellRowName = row.createCell(13);
		startDateCellRowName.setCellValue("专用权期限起始");
		
		HSSFCell endDateCellRowName = row.createCell(14);
		endDateCellRowName.setCellValue("专用权期限中止");
		
		HSSFCell originalityCellRowName = row.createCell(15);
		originalityCellRowName.setCellValue("商标创意");
		
	}
	
	private static void writeBrandRecordToRow(Brand brand, HSSFRow row) {
		HSSFCell addressCell = row.createCell(0);
		HSSFCell caseStatusCell = row.createCell(1);
		HSSFCell categoryCell = row.createCell(2);
		HSSFCell brandNoCell = row.createCell(3);
		HSSFCell nameCell = row.createCell(4);
		HSSFCell combinationTypeCell = row.createCell(5);
		HSSFCell similarNoCell = row.createCell(6);
		HSSFCell scopeCell = row.createCell(7);
		HSSFCell transactionModeCell = row.createCell(8);
		HSSFCell priceCell = row.createCell(9);
		HSSFCell appPersonCell = row.createCell(10);
		HSSFCell appDateCell = row.createCell(11);
		HSSFCell publishDateCell = row.createCell(12);
		HSSFCell startDateCell = row.createCell(13);
		HSSFCell endDateCell = row.createCell(14);
		HSSFCell originalityCell = row.createCell(15);
		
		addressCell.setCellValue(brand.getAddress());
		caseStatusCell.setCellValue(brand.getCaseStatus());
		categoryCell.setCellValue("第" + brand.getBrandCategory().getCategoryId() + "类-" + brand.getBrandCategory().getCategoryName());
		brandNoCell.setCellValue(brand.getBrandNo());
		nameCell.setCellValue(brand.getName());
		combinationTypeCell.setCellValue(brand.getCombinationType());
		similarNoCell.setCellValue(brand.getSimilarNo());
		scopeCell.setCellValue(brand.getScope());
		
		if(brand.getTransactionMode() == 2) {
			transactionModeCell.setCellValue("转让");
		} else {
			transactionModeCell.setCellValue("出售");
		}		
		
		priceCell.setCellValue(brand.getPrice());
		appPersonCell.setCellValue(brand.getAppPerson());
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		if(brand.getAppDate() == null) {
			appDateCell.setCellValue("");
		} else {
			appDateCell.setCellValue(sdf.format(brand.getAppDate()));
		}
		
		if(brand.getPublishDate() == null) {
			publishDateCell.setCellValue("");
		} else {
			publishDateCell.setCellValue(sdf.format(brand.getPublishDate()));
		}
		
		if(brand.getStartDate() == null) {
			startDateCell.setCellValue("");
		} else {
			startDateCell.setCellValue(sdf.format(brand.getStartDate()));
		}
		
		if(brand.getEndDate() == null) {
			endDateCell.setCellValue("");
		} else {
			endDateCell.setCellValue(sdf.format(brand.getEndDate()));
		}
		
		originalityCell.setCellValue(brand.getOriginality());
	}
}
