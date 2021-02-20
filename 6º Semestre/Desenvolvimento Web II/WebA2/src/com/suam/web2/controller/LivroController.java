package com.suam.web2.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.suam.web2.bean.Livro;
import com.suam.web2.service.LivroService;

/**
 * Servlet implementation class LivroController
 */
@WebServlet("/LivroController")
public class LivroController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LivroController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			if(request.getParameter("action") != null && request.getParameter("action").equals("remove")) {
				int codigo = Integer.parseInt(request.getParameter("codigo"));
				LivroService.deleteLivro(codigo);
				
				request.removeAttribute("action");
				request.removeAttribute("codigo");
				
				response.sendRedirect("LivroController?success=true");
			} else {
				List<Livro> livros = LivroService.getLivros();
				request.setAttribute("livros", livros);
				request.getRequestDispatcher("livros.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String titulo = request.getParameter("titulo");
			double preco = Double.parseDouble(request.getParameter("preco"));
			int ano = Integer.parseInt(request.getParameter("ano"));
			int paginas = Integer.parseInt(request.getParameter("paginas"));
			String imagem = request.getParameter("imagem");
			char status = request.getParameter("status").charAt(0);
			
			Livro livro = new Livro(titulo, preco, ano, paginas, imagem, status);
			LivroService.insertLivro(livro);
			response.sendRedirect("LivroController?success=true");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
