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
import analysis.dto.EnterpriseDTO;
import analysis.dto.StockinfoDTO;
import analysis.service.ProductService;
import analysis.service.ProductServiceImpl;


@WebServlet(name = "stocklist", urlPatterns = { "/stocklist.do" })
public class EnterpriseInfoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String encode="005930";	
		//�����Ͻ� �޼ҵ� call
		
		ProductService service = new ProductServiceImpl();
//		LOGIC logic = new LOGICimpl();
		ArrayList<EnterpriseDTO> entlist = service.select_ent(encode);
		ArrayList<BpsepsDTO> bpsEps = service.bps(entlist);
		ArrayList<StockinfoDTO> stoinfo = service.select_sto(encode);
		
		//������ ����(�̸� �� ����ص� ��) ������ �������� �� ������ (list.jsp�� ������)
		req.setAttribute("entlist", entlist);
		req.setAttribute("bpsEps", bpsEps);
		req.setAttribute("stoinfo", stoinfo);
//		System.out.println(bpsEps.toString());
		
		//��û ������- ����ȭ���� �и��ϰ� �и��� ����ȭ���� ��û�ǵ��� ������(list.jsp)
		RequestDispatcher rd = req.getRequestDispatcher("/analysis/Analysis_main.jsp");
		rd.forward(req, res);
	}	
	
}
