package product.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import product.dto.ProductDTO;
import product.service.ProductService;
import product.service.ProductServiceImpl;
import sun.tools.jar.resources.jar;

/**
 * Servlet implementation class ProductSearchOpnameServlet
 */
@WebServlet(name = "searchopname", urlPatterns = { "/ProductSearchOpnameServlet.do" })
public class ProductSearchOpnameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("application/json;charset=utf-8");
		String opname =request.getParameter("opname");
		System.out.println("³Ñ¾î¿È:===>"+opname);

		ArrayList<ProductDTO> prdlist = null;
		
		ProductService service = new ProductServiceImpl();
		
		prdlist = service.searchOpname(opname);
	
		JSONArray jArray =	 new JSONArray();
		int length = prdlist.size();
		JSONObject jObject = null;
		
		for (int i = 0; i < length; i++) {
			ProductDTO prd =prdlist.get(i);
			jObject = new JSONObject();
			jObject.put("opname", prd.getOpname());
			jObject.put("title", prd.getTitle());
			jObject.put("classify", prd.getClassify());
			jObject.put("type", prd.getType());
			jObject.put("prdate", prd.getPrdate());
			jObject.put("scale", prd.getScale());
			jObject.put("oneprofit", prd.getOneprofit());
			jObject.put("threeprofit", prd.getThreeprofit());
			jObject.put("sixprofit", prd.getSixprofit());
			jObject.put("twelveprofit", prd.getTwelveprofit());
			jObject.put("charge", prd.getCharge());
			jObject.put("std", prd.getStd());
		
			jArray.add(i,jObject);
			System.out.println(jArray.get(i).toString());
			
				
		}
		System.out.println(jArray.toJSONString());
		PrintWriter pw = response.getWriter();
		pw.print(jArray.toJSONString());
		
		
	}

	

}
