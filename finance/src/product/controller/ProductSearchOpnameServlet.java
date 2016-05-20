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

/**
 * Servlet implementation class ProductSearchOpnameServlet
 */
@WebServlet(name = "searchopname", urlPatterns = { "/ProductSearchOpnameServlet.do" })
public class ProductSearchOpnameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String opname =request.getParameter("opname");
		System.out.println("³Ñ¾î¿È:===>"+opname);

		ArrayList<ProductDTO> prdlist = null;
		
		ProductService service = new ProductServiceImpl();
		
		prdlist = service.searchOpname(opname);
				
		
		
	}

	

}
