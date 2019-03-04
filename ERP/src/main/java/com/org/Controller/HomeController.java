package com.org.Controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
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
import com.org.DAO.CentroDAOInterface;
import com.org.DAO.EquipoDaoInterface;
import com.org.DAO.MaterialDaoInterface;
import com.org.DAO.MontajesInterface;
import com.org.DAO.ProyectoInterface;
import com.org.DAO.TareaInterface;
import com.org.DAO.Tienda_Interface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.CampañaDTO;
import com.org.DTO.CentroDTO;
import com.org.DTO.ClienteDTO;
import com.org.DTO.ConcursoDTO;
import com.org.DTO.EquipoDTO;
import com.org.DTO.MaterialDTO;
import com.org.DTO.MontajeDTO;
import com.org.DTO.ProyectoDTO;
import com.org.DTO.TiendaDTO;
import com.org.DTO.UsuarioDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@Autowired
	private UsuariosDaoInterface dao;
	@Autowired
	private CampañaDaoInterface dao1;
	@Autowired
	private EquipoDaoInterface dao5;
	@Autowired
	private MontajesInterface dao2;
	@Autowired
	private CentroDAOInterface dao4;
	@Autowired
	private ProyectoInterface dao3;
	@Autowired 
	private TareaInterface dao6;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		Cookie[ ] cookies = request.getCookies();
		String cookieName = "emailCookie";
		String email="";
		HttpSession session = request.getSession(true);
		if(cookies!=null) {
			for(Cookie cookie:cookies) {
				if(cookieName.equals(cookie.getName())) {
					email = cookie.getValue();
				}
			}
		}
		
		if(email.equals("")) {
			return "login";
		}
		else {
			UsuarioDTO usuario = dao.LeerCredenciales(email);
			if(usuario!=null) {
				session.setAttribute("usuario", usuario);
				
				if(usuario.getTipo()==1) {
					List<MontajeDTO> montajes=dao2.ListarMontajes();
					List<UsuarioDTO> trabajador =dao.ListarUsuarios();
					List<EquipoDTO> equipos= dao5.ListarEquipos();
					List<CentroDTO> centros=dao4.ListarCentros();
					List<CampañaDTO> campanha=dao1.ListarCampañas();
					List<ProyectoDTO> proyectos=dao3.ListarProyectos();
					List<ConcursoDTO> fechaentrega=dao6.BuscarPorFechaentrega();
					
					session.setAttribute("montajes", montajes);
					session.setAttribute("trabajador", trabajador);
					session.setAttribute("equipos", equipos);
					session.setAttribute("campanha", campanha);
					session.setAttribute("centros", centros);
					session.setAttribute("proyectos", proyectos);
					session.setAttribute("fechaentrega",fechaentrega );
					
					return  "Gestor_Cuentas";
					
					/*HABRIA QUE ESPECIFICAR CADA VISTA CON EL TIPO DE TRABAJADOR*/
				}
				else if(usuario.getTipo()==2) {
					

					List<MontajeDTO> montajes=dao2.ListarMontajes();
					List<UsuarioDTO> trabajador =dao.ListarUsuarios();
					List<EquipoDTO> equipos= dao5.ListarEquipos();
					List<CentroDTO> centros=dao4.ListarCentros();
					List<CampañaDTO> campanha=dao1.ListarCampañas();
					List<ProyectoDTO> proyectos=dao3.ListarProyectos();
					List<ConcursoDTO> fechaentrega=dao6.BuscarPorFechaentrega();
					
					session.setAttribute("montajes", montajes);
					session.setAttribute("trabajador", trabajador);
					session.setAttribute("equipos", equipos);
					session.setAttribute("campanha", campanha);
					session.setAttribute("centros", centros);
					session.setAttribute("proyectos", proyectos);
					session.setAttribute("fechaentrega",fechaentrega );
					
					return  "Gestor_Cuentas";
				}
				else if(usuario.getTipo()==3) {
					List<MontajeDTO> montajes=dao2.ListarMontajes();
					List<UsuarioDTO> trabajador =dao.ListarUsuarios();
					List<EquipoDTO> equipos= dao5.ListarEquipos();
					List<CentroDTO> centros=dao4.ListarCentros();
					List<CampañaDTO> campanha=dao1.ListarCampañas();
					List<ProyectoDTO> proyectos=dao3.ListarProyectos();
					List<ConcursoDTO> fechaentrega=dao6.BuscarPorFechaentrega();
					
					session.setAttribute("montajes", montajes);
					session.setAttribute("trabajador", trabajador);
					session.setAttribute("equipos", equipos);
					session.setAttribute("campanha", campanha);
					session.setAttribute("centros", centros);
					session.setAttribute("proyectos", proyectos);
					session.setAttribute("fechaentrega",fechaentrega );
					
					return  "Gestor_Cuentas";
				}
				else {
					List<UsuarioDTO> trabajador =dao.ListarUsuarios();
					
					System.out.println(trabajador.get(0).getEmail());
					session.setAttribute("trabajador", trabajador);
					
					return "administrador";
				}
				
			}
			
			else return "login";
			
		}
	}
	
	@RequestMapping(value = "/cerrar_sesion", method = RequestMethod.POST)
	public String cerrar_sesion(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session =request.getSession(true);
		session.removeAttribute("email");
		return "login";
	}
	@RequestMapping(value="/Inicio", method = RequestMethod.POST)
	public String login(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		
			
			String nickname= request.getParameter("inputEmail");
			String pass= request.getParameter("inputPassword");
			HttpSession session =request.getSession(true);
			
			System.out.println(nickname+pass);
			UsuarioDTO usuario= new UsuarioDTO();
			usuario=dao.LeerCredenciales(nickname);
			
			
			if(usuario!=null) {
				if(usuario.getPass().equals(pass)) {
				
					session.setAttribute("usuario", usuario);
					Cookie c = new Cookie("emailCookie", usuario.getEmail());
					c.setMaxAge(60*60*24*31);//caducan cada mes
					c.setPath("/");
					response.addCookie(c);
					if(usuario.getTipo()==1) {
						List<MontajeDTO> montajes=dao2.ListarMontajes();
						List<UsuarioDTO> trabajador =dao.ListarUsuarios();
						List<EquipoDTO> equipos= dao5.ListarEquipos();
						List<CentroDTO> centros=dao4.ListarCentros();
						List<CampañaDTO> campanha=dao1.ListarCampañas();
						List<ProyectoDTO> proyectos=dao3.ListarProyectos();
						List<ConcursoDTO> fechaentrega=dao6.BuscarPorFechaentrega();
						
						session.setAttribute("montajes", montajes);
						session.setAttribute("trabajador", trabajador);
						session.setAttribute("equipos", equipos);
						session.setAttribute("campanha", campanha);
						session.setAttribute("centros", centros);
						session.setAttribute("proyectos", proyectos);
						session.setAttribute("fechaentrega",fechaentrega );
						
						return  "Gestor_Cuentas";
					}
					else if(usuario.getTipo()==2) {
						
						
						List<MontajeDTO> montajes=dao2.ListarMontajes();
						List<UsuarioDTO> trabajador =dao.ListarUsuarios();
						List<EquipoDTO> equipos= dao5.ListarEquipos();
						List<CentroDTO> centros=dao4.ListarCentros();
						List<CampañaDTO> campanha=dao1.ListarCampañas();
						List<ProyectoDTO> proyectos=dao3.ListarProyectos();
						List<ConcursoDTO> fechaentrega=dao6.BuscarPorFechaentrega();
						
						
						session.setAttribute("montajes", montajes);
						session.setAttribute("trabajador", trabajador);
						session.setAttribute("equipos", equipos);
						session.setAttribute("campanha", campanha);
						session.setAttribute("centros", centros);
						session.setAttribute("proyectos", proyectos);
						session.setAttribute("fechaentrega",fechaentrega );
						
						return  "Gestor_Cuentas";
					}
					else if(usuario.getTipo()==3) {
						List<MontajeDTO> montajes=dao2.ListarMontajes();
						List<UsuarioDTO> trabajador =dao.ListarUsuarios();
						List<EquipoDTO> equipos= dao5.ListarEquipos();
						List<CentroDTO> centros=dao4.ListarCentros();
						List<CampañaDTO> campanha=dao1.ListarCampañas();
						List<ProyectoDTO> proyectos=dao3.ListarProyectos();
						List<ConcursoDTO> fechaentrega=dao6.BuscarPorFechaentrega();
						
						session.setAttribute("montajes", montajes);
						session.setAttribute("trabajador", trabajador);
						session.setAttribute("equipos", equipos);
						session.setAttribute("campanha", campanha);
						session.setAttribute("centros", centros);
						session.setAttribute("proyectos", proyectos);
						session.setAttribute("fechaentrega",fechaentrega );
						
						return  "Gestor_Cuentas";
					}
					else {
						List<UsuarioDTO> trabajador =dao.ListarUsuarios();	
						System.out.println(trabajador.get(0).getEmail());
						session.setAttribute("trabajador", trabajador);
						return "administrador";
					}
				
				} else return "login";
				
			}
			else return "login";
			
		}
	
	@RequestMapping(value = "/Logout", method = RequestMethod.POST)
	public String Logout(HttpServletRequest req,HttpServletResponse res, Model model) {
		HttpSession session = req.getSession(true);
		session.invalidate();
		Cookie c = new Cookie("emailCookie", ""); 
		c.setMaxAge(60*60*24*31);
		c.setPath("/");
		res.addCookie(c);
		return "login";
	}
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String Logoutget(HttpServletRequest req,HttpServletResponse res, Model model) {
		HttpSession session = req.getSession(true);
		session.invalidate();
		Cookie c = new Cookie("emailCookie", ""); 
		c.setMaxAge(60*60*24*31);
		c.setPath("/");
		res.addCookie(c);
		return "login";
	}
	@RequestMapping(value = "/Contrasenaolvidada", method = RequestMethod.GET)
	public String ContrasenaOlvidada() {
		
		return "Passolvidada";
	}
	@RequestMapping(value = "/NuevoProyecto", method = RequestMethod.POST)
	public String NuevoProyecto(HttpServletRequest req,HttpServletResponse res, Model model) {
		HttpSession session =req.getSession(true);
		
		List<UsuarioDTO> usuarios =dao.ListarUsuarios();
		List<EquipoDTO> equipos= dao5.ListarEquipos();
		session.setAttribute("equipos", equipos);
		session.setAttribute("usuarios", usuarios);
		
		return "NuevoProyecto";
	}
	@RequestMapping(value = "/Passolvidada", method = RequestMethod.GET)
	public void Passolvidada(HttpServletRequest req,HttpServletResponse res, Model model) {
		
	
	}

	@RequestMapping(value = "/Calendario", method = RequestMethod.GET)
	public String Calendario(HttpServletRequest req,HttpServletResponse res, Model model) {
		HttpSession session = req.getSession(true);
		
		List<CentroDTO> centros=dao4.ListarCentros();
		List<CampañaDTO> campanha=dao1.ListarCampañas();
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("campanha", campanha);
		session.setAttribute("centros", centros);
		return "Calendario";
	}
	@RequestMapping(value = "/GestorCuentas", method = RequestMethod.GET)
	public String GestorCuentas(HttpServletRequest req,HttpServletResponse res, Model model) {
		HttpSession session = req.getSession(true);
		List<MontajeDTO> montajes=dao2.ListarMontajes();
		session.setAttribute("montajes", montajes);
		return "Estados";
	}


	
			
	
}
