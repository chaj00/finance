package analysis.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import analysis.dto.BpsepsDTO;
import analysis.dto.EnterpriseinfoDTO;
import analysis.dto.EnterpriseDTO;
import analysis.dto.StockinfoDTO;
import analysis.service.ProductService;
import analysis.service.ProductServiceImpl;


@WebServlet(name = "stocklist", urlPatterns = { "/stocklist.do" })
public class EnterpriseInfoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String encode="005930";	
		String page = req.getParameter("page");
		String pathurl = req.getParameter("pathurl");
		String forwardview = "";
		
		//�����Ͻ� �޼ҵ� call
		
		ProductService service = new ProductServiceImpl();
//		LOGIC logic = new LOGICimpl();
		ArrayList<EnterpriseDTO> entlist = service.select_ent1(encode);
		ArrayList<EnterpriseinfoDTO> entinfolist = service.select_ent(encode);
		ArrayList<BpsepsDTO> bpsEpsList = service.bps(entinfolist);
		ArrayList<StockinfoDTO> stoinfo = service.select_sto(encode);	
		
		System.out.println(bpsEpsList);
		//������ ����(�̸� �� ����ص� ��) ������ �������� �� ������ (list.jsp�� ������)
		req.setAttribute("entinfolist", entinfolist);
		req.setAttribute("bpsEps", bpsEpsList);
		req.setAttribute("stoinfo", stoinfo);
//		System.out.println(bpsEps.toString());
		
		req.setAttribute("pathurl", pathurl);
		forwardview="/layout/mainLayout.jsp";
		System.out.println(page);
		
		/*if(page.equals("analysis")){
			req.setAttribute("pathurl", pathurl);
			forwardview="/layout/mainLayout.jsp";
		}else if(page.equals("samsung")){
			req.setAttribute("pathurl", pathurl);
			forwardview="/layout/mainLayout.jsp";
		}else{
			req.setAttribute("pathurl", pathurl);
			forwardview="/layout/mainLayout.jsp";
		}*/
		
		//��û ������- ����ȭ���� �и��ϰ� �и��� ����ȭ���� ��û�ǵ��� ������(list.jsp)
		RequestDispatcher rd = req.getRequestDispatcher(forwardview);
		rd.forward(req, res);
		//

	}	
	
}




