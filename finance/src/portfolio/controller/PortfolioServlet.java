package portfolio.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import portfolio.dto.PortfolioDTO;
import portfolio.service.PortfolioService;
import portfolio.service.PortfolioServiceImpl;



@WebServlet(name = "portfolio", urlPatterns = { "/portfolio.do" })
public class PortfolioServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		req.setCharacterEncoding("euc-kr");

		doPost(req,res);
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {


		req.setCharacterEncoding("euc-kr");
		PortfolioService service = new PortfolioServiceImpl();
		
		
		
		String sRiskPoint = req.getParameter("vRiskPoint");
		String plan = req.getParameter("sPlan");
		System.out.println(sRiskPoint + plan);

		//sPlan1
		String initInvestPrice = req.getParameter("txt_initInvestPrice");
		String MonthSavePrice = req.getParameter("txt_MonthSavePrice");
		String InvestTerm = req.getParameter("txt_InvestTerm");
		String InvestTermMon = req.getParameter("txt_InvestTermMon");
		
		//sPlan2
		//initInvestPrice
		//MonthSavePrice;
		//InvestTerm;
		String TargetPrice = req.getParameter("txt_TargetPrice");
		
		
		//sPlan==3
		//initInvestPrice
		
		String NowAge = req.getParameter("txt_NowAge");
		String TargetPriceRetire = req.getParameter("txt_TargetPriceRetire");
		String ForecastRetire = req.getParameter("txt_ForecastRetire");
		String Life = req.getParameter("txt_Life");
		
		
		System.out.println("현재나이    : "+NowAge);
		System.out.println("투자가능액 : "+MonthSavePrice);
		System.out.println("은퇴흐소득 : "+ForecastRetire);
		System.out.println("투자년       : "+InvestTerm);
		System.out.println("투자개월    : "+InvestTermMon);
		System.out.println("목표금액    : "+TargetPrice);
		System.out.println("은퇴후소득 : "+TargetPriceRetire);
		System.out.println("은퇴나이    : "+ForecastRetire);
		System.out.println("평균수명    : "+Life);
		
		

		ParamSetting obj = new ParamSetting();
		
		if(sRiskPoint.equals("1")){
			
			String type = " type='주식형' and ";
			String std = " and std >= 0 and std < 5 ";
			String rownum = "2";
			
			ArrayList<PortfolioDTO> list1 = obj.ParamSetting(type, std, rownum);
			
			type = " type='파생상품' and ";
			std = " and std >= 0 and std < 10 "; //데이터없어서 재조정
			rownum = "1";
			
			ArrayList<PortfolioDTO> list2 = obj.ParamSetting(type, std, rownum);
			
			type = " type='채권형' and ";
			std = " ";
			rownum = "4";
			
			ArrayList<PortfolioDTO> list3 = obj.ParamSetting(type, std, rownum);
			
			type = " type <> '주식형' and type <> '파생상품' and type <> '채권형' and ";
			std = " ";
			rownum = "3";
			
			ArrayList<PortfolioDTO> list4 = obj.ParamSetting(type, std, rownum);

			System.out.println("==========위험점수 1============");
			System.out.println(list1.toString());
			System.out.println(list2.toString());
			System.out.println(list3.toString());
			System.out.println(list4.toString());
			
		}else if(sRiskPoint.equals("2")){	

			String type = " type='주식형' and ";
			String std = " and std > 5 and std < 10 ";
			String rownum = "3";
			
			ArrayList<PortfolioDTO> list1 = obj.ParamSetting(type, std, rownum);
			
			type = " type='파생상품' and ";
			std = " and std > 5 and std < 10 ";
			rownum = "4";
			
			ArrayList<PortfolioDTO> list2 = obj.ParamSetting(type, std, rownum);
			
			type = " type='채권형' and ";
			std = " ";
			rownum = "4";
			
			ArrayList<PortfolioDTO> list3 = obj.ParamSetting(type, std, rownum);
			
			type = " type <> '주식형' and type <> '파생상품' and type <> '채권형' and ";
			std = " ";
			rownum = "3";
			
			ArrayList<PortfolioDTO> list4 = obj.ParamSetting(type, std, rownum);

			System.out.println("==========위험점수 2============");
			System.out.println(list1.toString());
			System.out.println(list2.toString());
			System.out.println(list3.toString());
			System.out.println(list4.toString());
			
		}else if(sRiskPoint.equals("3")){

			String type = " type='주식형' and ";
			String std = " and std > 10 and std < 15 ";
			String rownum = "3";
			
			ArrayList<PortfolioDTO> list1 = obj.ParamSetting(type, std, rownum);
			
			type = " type='파생상품' and ";
			std = " and std > 10 and std < 15 ";
			rownum = "4";
			
			ArrayList<PortfolioDTO> list2 = obj.ParamSetting(type, std, rownum);
			
			type = " type='채권형' and ";
			std = " and std > 10 and std < 15 ";
			rownum = "1";
			
			ArrayList<PortfolioDTO> list3 = obj.ParamSetting(type, std, rownum);
			
			type = " type <> '주식형' and type <> '파생상품' and type <> '채권형' and ";
			std = " and std > 10 and std < 15 ";
			rownum = "2";
			
			ArrayList<PortfolioDTO> list4 = obj.ParamSetting(type, std, rownum);

			System.out.println("==========위험점수 3============");
			System.out.println(list1.toString());
			System.out.println(list2.toString());
			System.out.println(list3.toString());
			System.out.println(list4.toString());
		}else if(sRiskPoint.equals("4")){
			
			String type = " type='주식형' and ";
			String std = " std > 15 and std < 25 ";
			String rownum = "4";
			
			ArrayList<PortfolioDTO> list1 = obj.ParamSetting(type, std, rownum);
			
			type = " type='파생상품' and ";
			std = " std > 15 and std < 25 ";
			rownum = "2";
			
			ArrayList<PortfolioDTO> list2 = obj.ParamSetting(type, std, rownum);
			
			type = " type='채권형' and ";
			std = " ";
			rownum = "2";
			
			ArrayList<PortfolioDTO> list3 = obj.ParamSetting(type, std, rownum);
			
			type = " type <> '주식형' and type <> '파생상품' and type <> '채권형' and ";
			std = " ";
			rownum = "2";
			
			ArrayList<PortfolioDTO> list4 = obj.ParamSetting(type, std, rownum);

			System.out.println("==========위험점수 4============");
			System.out.println(list1.toString());
			System.out.println(list2.toString());
			System.out.println(list3.toString());
			System.out.println(list4.toString());
			
		}else if(sRiskPoint.equals("5")){
			String type = " type='주식형' and ";
			String std = " and std > 25 ";
			String rownum = "4";
			
			ArrayList<PortfolioDTO> list1 = obj.ParamSetting(type, std, rownum);
			
			type = " type='파생상품' and ";
			std = " and std > 25 ";
			rownum = "4";
			
			ArrayList<PortfolioDTO> list2 = obj.ParamSetting(type, std, rownum);
			
			type = " type='채권형' and ";
			std = " ";
			rownum = "1";
			
			ArrayList<PortfolioDTO> list3 = obj.ParamSetting(type, std, rownum);
			
			type = " type <> '주식형' and type <> '파생상품' and type <> '채권형' and ";
			std = " ";
			rownum = "1";
			
			ArrayList<PortfolioDTO> list4 = obj.ParamSetting(type, std, rownum);

			System.out.println("==========위험점수 5============");
			System.out.println(list1.toString());
			System.out.println(list2.toString());
			System.out.println(list3.toString());
			System.out.println(list4.toString());
		}else{
			System.out.println("failed");
		}
		
		
		
		 RequestDispatcher rd = req.getRequestDispatcher("/portfolio/portfolio_result.jsp");
		 rd.forward(req, res);
}
	

	
}
