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
		
		
		System.out.println("���糪��    : "+NowAge);
		System.out.println("���ڰ��ɾ� : "+MonthSavePrice);
		System.out.println("������ҵ� : "+ForecastRetire);
		System.out.println("���ڳ�       : "+InvestTerm);
		System.out.println("���ڰ���    : "+InvestTermMon);
		System.out.println("��ǥ�ݾ�    : "+TargetPrice);
		System.out.println("�����ļҵ� : "+TargetPriceRetire);
		System.out.println("������    : "+ForecastRetire);
		System.out.println("��ռ���    : "+Life);
		
		

		ParamSetting obj = new ParamSetting();
		
		if(sRiskPoint.equals("1")){
			
			String type = " type='�ֽ���' and ";
			String std = " and std >= 0 and std < 5 ";
			String rownum = "2";
			
			ArrayList<PortfolioDTO> list1 = obj.ParamSetting(type, std, rownum);
			
			type = " type='�Ļ���ǰ' and ";
			std = " and std >= 0 and std < 10 "; //�����;�� ������
			rownum = "1";
			
			ArrayList<PortfolioDTO> list2 = obj.ParamSetting(type, std, rownum);
			
			type = " type='ä����' and ";
			std = " ";
			rownum = "4";
			
			ArrayList<PortfolioDTO> list3 = obj.ParamSetting(type, std, rownum);
			
			type = " type <> '�ֽ���' and type <> '�Ļ���ǰ' and type <> 'ä����' and ";
			std = " ";
			rownum = "3";
			
			ArrayList<PortfolioDTO> list4 = obj.ParamSetting(type, std, rownum);

			System.out.println("==========�������� 1============");
			System.out.println(list1.toString());
			System.out.println(list2.toString());
			System.out.println(list3.toString());
			System.out.println(list4.toString());
			
		}else if(sRiskPoint.equals("2")){	

			String type = " type='�ֽ���' and ";
			String std = " and std > 5 and std < 10 ";
			String rownum = "3";
			
			ArrayList<PortfolioDTO> list1 = obj.ParamSetting(type, std, rownum);
			
			type = " type='�Ļ���ǰ' and ";
			std = " and std > 5 and std < 10 ";
			rownum = "4";
			
			ArrayList<PortfolioDTO> list2 = obj.ParamSetting(type, std, rownum);
			
			type = " type='ä����' and ";
			std = " ";
			rownum = "4";
			
			ArrayList<PortfolioDTO> list3 = obj.ParamSetting(type, std, rownum);
			
			type = " type <> '�ֽ���' and type <> '�Ļ���ǰ' and type <> 'ä����' and ";
			std = " ";
			rownum = "3";
			
			ArrayList<PortfolioDTO> list4 = obj.ParamSetting(type, std, rownum);

			System.out.println("==========�������� 2============");
			System.out.println(list1.toString());
			System.out.println(list2.toString());
			System.out.println(list3.toString());
			System.out.println(list4.toString());
			
		}else if(sRiskPoint.equals("3")){

			String type = " type='�ֽ���' and ";
			String std = " and std > 10 and std < 15 ";
			String rownum = "3";
			
			ArrayList<PortfolioDTO> list1 = obj.ParamSetting(type, std, rownum);
			
			type = " type='�Ļ���ǰ' and ";
			std = " and std > 10 and std < 15 ";
			rownum = "4";
			
			ArrayList<PortfolioDTO> list2 = obj.ParamSetting(type, std, rownum);
			
			type = " type='ä����' and ";
			std = " and std > 10 and std < 15 ";
			rownum = "1";
			
			ArrayList<PortfolioDTO> list3 = obj.ParamSetting(type, std, rownum);
			
			type = " type <> '�ֽ���' and type <> '�Ļ���ǰ' and type <> 'ä����' and ";
			std = " and std > 10 and std < 15 ";
			rownum = "2";
			
			ArrayList<PortfolioDTO> list4 = obj.ParamSetting(type, std, rownum);

			System.out.println("==========�������� 3============");
			System.out.println(list1.toString());
			System.out.println(list2.toString());
			System.out.println(list3.toString());
			System.out.println(list4.toString());
		}else if(sRiskPoint.equals("4")){
			
			String type = " type='�ֽ���' and ";
			String std = " std > 15 and std < 25 ";
			String rownum = "4";
			
			ArrayList<PortfolioDTO> list1 = obj.ParamSetting(type, std, rownum);
			
			type = " type='�Ļ���ǰ' and ";
			std = " std > 15 and std < 25 ";
			rownum = "2";
			
			ArrayList<PortfolioDTO> list2 = obj.ParamSetting(type, std, rownum);
			
			type = " type='ä����' and ";
			std = " ";
			rownum = "2";
			
			ArrayList<PortfolioDTO> list3 = obj.ParamSetting(type, std, rownum);
			
			type = " type <> '�ֽ���' and type <> '�Ļ���ǰ' and type <> 'ä����' and ";
			std = " ";
			rownum = "2";
			
			ArrayList<PortfolioDTO> list4 = obj.ParamSetting(type, std, rownum);

			System.out.println("==========�������� 4============");
			System.out.println(list1.toString());
			System.out.println(list2.toString());
			System.out.println(list3.toString());
			System.out.println(list4.toString());
			
		}else if(sRiskPoint.equals("5")){
			String type = " type='�ֽ���' and ";
			String std = " and std > 25 ";
			String rownum = "4";
			
			ArrayList<PortfolioDTO> list1 = obj.ParamSetting(type, std, rownum);
			
			type = " type='�Ļ���ǰ' and ";
			std = " and std > 25 ";
			rownum = "4";
			
			ArrayList<PortfolioDTO> list2 = obj.ParamSetting(type, std, rownum);
			
			type = " type='ä����' and ";
			std = " ";
			rownum = "1";
			
			ArrayList<PortfolioDTO> list3 = obj.ParamSetting(type, std, rownum);
			
			type = " type <> '�ֽ���' and type <> '�Ļ���ǰ' and type <> 'ä����' and ";
			std = " ";
			rownum = "1";
			
			ArrayList<PortfolioDTO> list4 = obj.ParamSetting(type, std, rownum);

			System.out.println("==========�������� 5============");
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
