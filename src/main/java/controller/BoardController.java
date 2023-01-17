package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

import api.MovieApi;
import common.FileUpload;
import dao.BoardDAO;
import domain.BoardVO;
import service.BoardService;

@WebServlet("/board/*")
public class BoardController extends HttpServlet {
       
	private BoardService service;
	private FileUpload multiReq;
	private MovieApi movieApi;
	
	@Override
	public void init() throws ServletException {
		BoardDAO dao = new BoardDAO();
		service = new BoardService(dao);
		multiReq = new FileUpload("board/");
		movieApi = new MovieApi();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contextPath = request.getContextPath();
		String pathInfo = request.getPathInfo();
		final String PREFIX = "/WEB-INF/views/board/";
		final String SUFFIX = ".jsp";
		
		RequestDispatcher rd = null;
		String nextPage = null;
		
		if(pathInfo == null || pathInfo.equals("/") || pathInfo.equals("/list")) {
			List<BoardVO> boardList = service.boardList();
			request.setAttribute("list", boardList);
			nextPage = "list";
		}
		else if(pathInfo.equals("/api")) {
			
			String clientId = "Cw6IJAYORJJLDXtt_aks"; //애플리케이션 클라이언트 아이디
			String clientSecret = "5Do36SK6y7"; //애플리케이션 클라이언트 시크릿
			
			String text = null;
			try {
			    text = URLEncoder.encode("탑건", "UTF-8");
			} catch (UnsupportedEncodingException e) {
			    throw new RuntimeException("검색어 인코딩 실패",e);
			}
			String result = "";
			
			String apiURL = "https://openapi.naver.com/v1/search/movie?query=" + text;    // JSON 결과
			//String apiURL = "https://openapi.naver.com/v1/search/movie.xml?query="+ text; // XML 결과
			
			Map<String, String> requestHeaders = new HashMap<>();
			requestHeaders.put("X-Naver-Client-Id", clientId);
			requestHeaders.put("X-Naver-Client-Secret", clientSecret);
			String responseBody = movieApi.get(apiURL, requestHeaders);
			
			JsonElement element = JsonParser.parseString(responseBody);
			
			request.setAttribute("api", element);
			
			nextPage = "list";
		
		}
		
		else if(pathInfo.equals("/detail")) {
				String paramBno = request.getParameter("bno");
				int bno = Integer.parseInt(paramBno);
				BoardVO findBoard = service.findBoard(bno);
				request.setAttribute("board", findBoard);
				nextPage = "detail";
		}
		else if(pathInfo.equals("/viewDetail")) {
			nextPage = "viewDetail";
		} 
		else if(pathInfo.equals("/reviewDetail")) {
			nextPage = "review";
		}
		else if(pathInfo.equals("/writeForm")) {
			nextPage = "writeForm";
		}
		else if(pathInfo.equals("/write")) {
			Map<String, String> req = multiReq.getMultipartRequest(request);
			String imageFileName = req.get("imageFileName");
			
			BoardVO vo = BoardVO.builder()
					.title(req.get("title"))
					.content(req.get("content"))
					.writer(req.get("writer"))
					.imageFileName(req.get("imageFileName")).build();
			int boardNo = service.addBoard(vo);
			
			if(imageFileName != null && imageFileName.length() > 0) {
				multiReq.uploadImage(boardNo, imageFileName);
			}
			
			response.sendRedirect(contextPath + "/board");
			return;
		} else {
			System.out.println("잘못된 접근");
			return;
		}
		
		rd = request.getRequestDispatcher(PREFIX + nextPage + SUFFIX);
		rd.forward(request, response);
	}

	

}
