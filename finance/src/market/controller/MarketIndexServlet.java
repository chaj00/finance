package market.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import market.dto.MarketIndexDTO;
import market.service.MarketService;
import market.service.MarketSrviceImpl;


@WebServlet(name = "marketindex", urlPatterns = { "/marketindex.do" })
public class MarketIndexServlet extends HttpServlet{

	protected void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		MarketService service = new MarketSrviceImpl();
		MarketIndexDTO indexList = new MarketIndexDTO();
		
		indexList = service.marketindex();
		
		
		request.setAttribute("indexList", indexList);
		request.setAttribute("pathurl", "../market/marketindexResult.jsp");
		
		RequestDispatcher rd = request.getRequestDispatcher("/layout/mainLayout.jsp");
		rd.forward(request, response);
		
	}
	

}
