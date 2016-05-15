package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.dto.ProductDTO;
import product.service.ProductService;
import product.service.ProductServiceImpl;


@WebServlet(name = "search", urlPatterns = { "/prdSearch.do" })
public class ProductSearchServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		req.setCharacterEncoding("euc-kr");
		ArrayList<String> opNamelist = null;
		ArrayList<ProductDTO> productlist = null;
		
		ProductService service = new ProductServiceImpl();
		
		opNamelist = service.opNameSelect();
		
		productlist = service.select();
		
		/*int length = opNamelist.size();
		for(int i=0; i<length; i++){
			System.out.println(opNamelist.get(i).toString());
		}*/
		int length = productlist.size();
		for(int i=0; i<length; i++){
			ProductDTO prd = productlist.get(i);
			System.out.println(prd.getOpname()+prd.getTitle()+prd.getPrdate()+prd.getClassify()+prd.getType()
			+prd.getScale()+prd.getCharge()+prd.getOneprofit()+prd.getThreeprofit()+
			prd.getSixprofit()+prd.getTwelveprofit()+prd.getStd());

			
		}
		req.setAttribute("opNamelist", opNamelist);
		req.setAttribute("productlist", productlist);
		
		RequestDispatcher rd = req.getRequestDispatcher("/product/product_main.jsp");
		rd.forward(req, res);
	}
}
