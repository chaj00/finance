package portfolio.controller;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.fasterxml.jackson.databind.ObjectMapper;


@WebServlet(name = "portfolio", urlPatterns = { "/portfolio.do" })
public class PortfolioServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("Application/json; charset=utf-8");
		
		JSONParser json_parser = new JSONParser();
		JSONObject jsonobj = null;
		try {
			jsonobj = (JSONObject)json_parser.parse("objSurveyData");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String param01 = (String)jsonobj.get("objSurveyData");
	
		
		JSONArray pramlist = (JSONArray)jsonobj.get("objSurveyData");
		
		for(int i =0; i < pramlist.size(); i++){
			String arrayData = (String)pramlist.get(i);
			System.out.println("list : " + arrayData);
		}

		
/*		BufferedReader br = new BufferedReader(new InputStreamReader(req.getInputStream()));
		String json = "";
		if(br != null){
			json = br.readLine();
			
		}
			ObjectMapper mapper = new ObjectMapper();

			*/
				
		
		
		
	}

}
