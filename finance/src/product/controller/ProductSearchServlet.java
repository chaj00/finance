package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.dto.ProductDTO;
import product.service.ProductService;
import product.service.ProductServiceImpl;

@WebServlet(name = "search", urlPatterns = { "/searchPrd2.do" })
public class ProductSearchServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("넘어오긴했냐?");
		ArrayList<ProductDTO> prdlist =null;
		ProductDTO prd = new ProductDTO();
		ProductService service = new ProductServiceImpl();
		
		
		/*prd.setClassify(request.getParameter("classify"));
		prd.setClassify(request.getParameter("type"));
		prd.setClassify(request.getParameter("prdate"));
		prd.setClassify(request.getParameter("scale"));
		prd.setClassify(request.getParameter("profit"));
		prd.setClassify(request.getParameter("charge"));
		prd.setClassify(request.getParameter("std"));
		prd.setClassify(request.getParameter("opname"));*/
		
		/*String[] classify = request.getParameterValues("classify");
		System.out.println(classify[0]);
		*/
		System.out.println("컨트롤러 통과");
		prdlist = service.search(prd);
		
		
		
	}

}
