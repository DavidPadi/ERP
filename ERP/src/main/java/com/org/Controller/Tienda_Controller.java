package com.org.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.DAO.CampañaDaoInterface;
import com.org.DAO.MaterialDaoInterface;
import com.org.DAO.Tienda_Interface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.ClienteDTO;
import com.org.DTO.MaterialDTO;
import com.org.DTO.TiendaDTO;
import com.org.DTO.UsuarioDTO;
 
@Controller
public class Tienda_Controller {
	private static final Logger logger = LoggerFactory.getLogger(Tienda_Controller.class);
	@Autowired
	private UsuariosDaoInterface dao;
	@Autowired
	private Tienda_Interface dao1;
	@Autowired
	private MaterialDaoInterface dao2;
	@Autowired
	private CampañaDaoInterface dao3;
	
	@RequestMapping(value="/tienda_nueva",method = RequestMethod.POST)
	public String tienda_nueva(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		
		int codigoventa=Integer.parseInt(request.getParameter("Codigoventa"));
		String cadena=request.getParameter("Cadena");
		String direccion=request.getParameter("Direccion");
		String localidad=request.getParameter("Localidad");
		String nombre=request.getParameter("Nombre");
		String estado=request.getParameter("Estado");
		System.out.println("Estado:"+estado);
		String tipologia= request.getParameter("Tipologia");
		String tiendatipo=request.getParameter("Tiendatipo");
		
		TiendaDTO tienda=new TiendaDTO(codigoventa,cadena,direccion,localidad,nombre,estado,tipologia,tiendatipo);
		
		dao1.CrearTienda(tienda);
		return "Gestor_Cuentas";
		

	}
	@RequestMapping(value="/editar_tienda", method = RequestMethod.POST)
	public String editar_tienda(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session =request.getSession(true);
		int codigoventa=Integer.parseInt(request.getParameter("Codigoventa"));
		String cadena=request.getParameter("Cadena");
		String direccion=request.getParameter("Direccion");
		String localidad=request.getParameter("Localidad");
		String nombre=request.getParameter("Nombre");
		String estado=request.getParameter("Estado");
		System.out.println("Estado:"+estado);
		String tipologia= request.getParameter("Tipologia");
		String tiendatipo=request.getParameter("Tiendatipo");
		TiendaDTO tiendaactualizada=new TiendaDTO(codigoventa,cadena,direccion,localidad,nombre,estado,tipologia,tiendatipo);
		System.out.println("Llamando al servicio editar tienda");
		dao1.EditarTienda(tiendaactualizada);
		
		List<TiendaDTO> tienda = dao1.ListarTiendas();
		List<UsuarioDTO> usuarios =dao.ListarUsuarios();
		List<MaterialDTO> material=dao2.ListarMateriales();
		
		List<ClienteDTO> cliente = dao3.Listar_Cliente_foreign();
		session.setAttribute("cliente", cliente);
		session.setAttribute("tienda", tienda);
		session.setAttribute("usuarios", usuarios);
		session.setAttribute("material", material);
		return "Gestor_Cuentas";
	}
	
	@RequestMapping(value="/NuevoCentro", method = RequestMethod.GET)
	public String NuevoCentro(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		return "NuevoCentro";
	}
	

}
