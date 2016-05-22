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

@WebServlet(name = "search", urlPatterns = { "/searchPrd2.do" })
public class ProductSearchServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pattern = "#.####";
		request.setCharacterEncoding("euc-kr");
		response.setContentType("application/json;charset=utf-8");
		//System.out.println("넘어오긴했냐?");
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
		
		
		//System.out.println("컨트롤러 통과");
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
		DecimalFormat dfomat = new DecimalFormat(pattern);
		/*
		 *classify = 펀드구분 class = chk1 name=ForgnSectCd 2개
		 *type= 펀드유형  class = chk2 name="FundInvstTypeCd" 8개
		 *prdate= 설정기간  class = chk3 name="SetPeriodMM" 6개
		 *scale= 총설정액  class = chk4 name=kfrEstabAmUk 6개
		 *profit = 수익률 class = chk5 name="Yield" 7개
		 *charge = 총보수  class = chk6 name="TotRwrt" 4개
		 *std= 위험등급   class = chk7 name="StdGrade" 6개
		 *opname = 운용사    class = chk8 name="OperCoCdList" 38개
		 */
		
		
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
			//System.out.println(prd2.getSixprofit());
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
			//System.out.println(jArray.get(i).toString());
			
			
		}
		//System.out.println(jArray.toJSONString());
		PrintWriter pw = response.getWriter();
		pw.print(jArray.toJSONString());
		
		
		
	}

}
