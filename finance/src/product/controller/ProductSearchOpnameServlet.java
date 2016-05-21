package product.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
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
		String pattern = "#.####";
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
		DecimalFormat dfomat = new DecimalFormat(pattern);
		
		for (int i = 0; i < length; i++) {
			ProductDTO prd2 =prdlist.get(i);
			jObject = new JSONObject();
			jObject.put("opname", prd2.getOpname());
			jObject.put("title", prd2.getTitle());
			jObject.put("classify", prd2.getClassify());
			jObject.put("type", prd2.getType());
			jObject.put("prdate", prd2.getPrdate().substring(0, 11));
			jObject.put("scale", Float.parseFloat(prd2.getScale()));
			
			if(prd2.getOneprofit()==null){
				jObject.put("oneprofit", " - ");
			}else{
				jObject.put("oneprofit", dfomat.format(Float.parseFloat(prd2.getOneprofit())*100));
			}
			if(prd2.getThreeprofit()==null){
				jObject.put("threeprofit", " - ");
			}else{
				
				jObject.put("threeprofit", dfomat.format(Float.parseFloat(prd2.getThreeprofit())*100));
			}
			System.out.println(prd2.getSixprofit());
			if(prd2.getSixprofit()==null){
				jObject.put("sixprofit", " - ");
			}else{
				jObject.put("sixprofit", dfomat.format(Float.parseFloat(prd2.getSixprofit())*100));
			}
			if(prd2.getTwelveprofit()==null){
				jObject.put("twelveprofit", " - ");
			}else{
				jObject.put("twelveprofit", dfomat.format(Float.parseFloat(prd2.getTwelveprofit())*100));
			}
			if(prd2.getCharge()==null){
				jObject.put("charge", " - ");
			}else{
				jObject.put("charge", dfomat.format(Float.parseFloat(prd2.getCharge())*100));
			}
			if(prd2.getStd()==null){
				jObject.put("std", " - ");
			}else{
				jObject.put("std", Float.parseFloat(prd2.getStd()));
			}
					
			jArray.add(i,jObject);
			System.out.println(jArray.get(i).toString());
			
			
				
		}
		System.out.println(jArray.toJSONString());
		PrintWriter pw = response.getWriter();
		pw.print(jArray.toJSONString());
		
		
	}

	

}
