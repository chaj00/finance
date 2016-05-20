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

@WebServlet(name = "search", urlPatterns = { "/searchPrd2.do" })
public class ProductSearchServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("application/json;charset=utf-8");
		System.out.println("넘어오긴했냐?");
		ArrayList<ProductDTO> prdlist =null;
		ProductDTO prd = new ProductDTO();
		ProductService service = new ProductServiceImpl();
		
		prd.setClassify(request.getParameter("classify"));
		prd.setType(request.getParameter("type"));
		prd.setPrdate(request.getParameter("prdate"));
		prd.setScale(request.getParameter("scale"));
		prd.setProfit(request.getParameter("profit"));
		prd.setCharge(request.getParameter("charge"));
		prd.setStd(request.getParameter("std"));
		prd.setOpname(request.getParameter("opname"));
		
		
		System.out.println("컨트롤러 통과");
		prdlist = service.search(prd);
		/*System.out.println("dds");
		int length = opNamelist.size();
		for(int i=0; i<length; i++){
			System.out.println(opNamelist.get(i).toString());
		}
		int length = prdlist.size();
		for(int i=0; i<length; i++){
			ProductDTO prd2 = prdlist.get(i);
			System.out.println(prd2.getOpname()+prd2.getTitle()+prd2.getPrdate()+prd2.getClassify()+prd2.getType()
			+prd2.getScale()+prd2.getCharge()+prd2.getOneprofit()+prd2.getThreeprofit()+
			prd2.getSixprofit()+prd2.getTwelveprofit()+prd2.getStd());

			
		}*/
		JSONArray jArray = new JSONArray();
		int length = prdlist.size();
		JSONObject jObject = new JSONObject();
		
		
		
		
		for (int i = 0; i < length; i++) {
			ProductDTO prd2 =prdlist.get(i);
			jObject = new JSONObject();
			jObject.put("opname", prd2.getOpname());
			jObject.put("title", prd2.getTitle());
			jObject.put("classify", prd2.getClassify());
			jObject.put("type", prd2.getType());
			jObject.put("prdate", prd2.getPrdate().substring(1, 11));
			jObject.put("scale", prd2.getScale());
			jObject.put("oneprofit", prd2.getOneprofit());
			jObject.put("threeprofit", prd2.getThreeprofit());
			jObject.put("sixprofit", prd2.getSixprofit());
			jObject.put("twelveprofit", prd2.getTwelveprofit());
			jObject.put("charge", prd2.getCharge());
			jObject.put("std", prd2.getStd());
		
			jArray.add(i,jObject);
			System.out.println(jArray.get(i).toString());
			
			
		}
		System.out.println(jArray.toJSONString());
		PrintWriter pw = response.getWriter();
		pw.print(jArray.toJSONString());
		
		
		
	}

}
