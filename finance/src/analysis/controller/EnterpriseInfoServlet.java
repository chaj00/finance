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
		
		//비지니스 메소드 call
		
		ProductService service = new ProductServiceImpl();
//		LOGIC logic = new LOGICimpl();
		ArrayList<EnterpriseDTO> entlist = service.select_ent1(encode);
		ArrayList<EnterpriseinfoDTO> entinfolist = service.select_ent(encode);
		ArrayList<BpsepsDTO> bpsEpsList = service.bps(entinfolist);
		ArrayList<StockinfoDTO> stoinfo = service.select_sto(encode);	
		
		System.out.println(bpsEpsList);
		//데이터 공유(이름 잘 기억해둘 것) 공유와 꺼내쓰는 것 같도록 (list.jsp와 같도록)
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
		
		//요청 재지정- 응답화면을 분리하고 분리한 응답화면이 요청되도록 재지정(list.jsp)
		RequestDispatcher rd = req.getRequestDispatcher(forwardview);
		rd.forward(req, res);
		//

	}	
	
}




