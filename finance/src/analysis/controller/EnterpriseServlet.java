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


@WebServlet(name = "entlist", urlPatterns = { "/entlist.do" }) 
public class EnterpriseServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String pathurl = "/analysis/layout/analysis_layout.jsp";
		
		ProductService service = new ProductServiceImpl();
		ArrayList<EnterpriseDTO> entlist = service.select_entname();
		
//		System.out.println(entlist);
		req.setAttribute("entlist", entlist);
		
		req.setAttribute("pathurl", pathurl);
		String forwardview="/layout/mainLayout.jsp";
		
		RequestDispatcher rd = req.getRequestDispatcher(forwardview);
		rd.forward(req, res);
		
	}	
	
}




