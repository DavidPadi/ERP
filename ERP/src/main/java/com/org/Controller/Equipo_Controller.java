package com.org.Controller;

import java.awt.Color;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.org.DAO.CampañaDaoInterface;
import com.org.DAO.CentroDAOInterface;
import com.org.DAO.EquipoDaoInterface;
import com.org.DAO.MaterialDaoInterface;
import com.org.DAO.ProyectoInterface;
import com.org.DAO.Tienda_Interface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.CentroDTO;
import com.org.DTO.ClienteDTO;
import com.org.DTO.EquipoDTO;
import com.org.DTO.MaterialDTO;
import com.org.DTO.ProyectoDTO;
import com.org.DTO.TiendaDTO;
import com.org.DTO.UsuarioDTO;


@Controller
public class Equipo_Controller {
@Autowired
private EquipoDaoInterface dao;
@Autowired
private UsuariosDaoInterface dao1;
@Autowired
private ProyectoInterface dao2;
@Autowired
private MaterialDaoInterface dao3;
@Autowired
private CampañaDaoInterface dao4;
@Autowired
private EquipoDaoInterface dao5;
@Autowired
private CentroDAOInterface dao6;



	@RequestMapping(value="/NuevoEquipo", method = RequestMethod.POST)
	public String Nuevo_Equipo(HttpServletRequest request,Locale locale, Model model) throws ParseException {
		HttpSession session =request.getSession(true);
		
		
		/*NOTA: LAS VARIABLES SE TIENEN QUE ENVIAR EN EL MISMO FORMATO QUE ACEPTA FULLCALENDAR*/	
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
		
		String fecha_in=(request.getParameter("Fecha_Inicio"));
		String fecha_fin=(request.getParameter("Fecha_Fin"));
		String descripcion=(request.getParameter("txtDescripcion"));
		String titulo=request.getParameter("titulo");
			
		EquipoDTO equipo = new EquipoDTO(titulo,  descripcion, fecha_in, fecha_fin);
			
		dao.CrearEquipo(equipo);
		
		EquipoDTO aux = new EquipoDTO();
		aux = dao.ListarId();
		
		
		
		
		for(String id_trab: request.getParameterValues("equipo")) {
			int id_trabajadores=Integer.parseInt(id_trab);
			dao.CrearEquipo_Trabajadores(aux.getId(),id_trabajadores);
			System.out.println("Id string trabaja: " +id_trab);
			
		}
		for(String idcamp: request.getParameterValues("campañas")) {
		
			dao.CrearEquipo_Campañas(aux.getId(),idcamp);
			System.out.println("Id string campaña: " +idcamp);
		
		}
		for(String idcent: request.getParameterValues("centros")) {
			int id_centros=Integer.parseInt(idcent);
			dao.CrearEquipo_Centros(aux.getId(),id_centros);
			System.out.println("Id string centro: " +idcent);
			
		}
		
		List<UsuarioDTO> usuarios =dao1.ListarUsuarios();
		List<MaterialDTO> material=dao3.ListarMateriales();
		List<ClienteDTO> cliente = dao4.Listar_Cliente_foreign();
		List<EquipoDTO> equipos= dao5.ListarEquipos();
		List<CentroDTO> centros=dao6.ListarCentros();
		
		session.setAttribute("cliente", cliente);
		session.setAttribute("usuarios", usuarios);
		session.setAttribute("material", material);
		session.setAttribute("equipos", equipos);
		session.setAttribute("centros", centros);
		
		return "Gestor_Cuentas";
	}
	
	@RequestMapping(value="/EditarEquipo", method = RequestMethod.POST)
	public String EditarEquipo(HttpServletRequest request,Locale locale, Model model) throws ParseException {
		HttpSession session =request.getSession(true);
		
		
		/*NOTA: LAS VARIABLES SE TIENEN QUE ENVIAR EN EL MISMO FORMATO QUE ACEPTA FULLCALENDAR*/	
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
		
		String fecha_in=(request.getParameter("Fecha_Inicio"));
		String fecha_fin=(request.getParameter("Fecha_Fin"));
		String descripcion=(request.getParameter("txtDescripcion"));
		String title=request.getParameter("titulo");
		int id=Integer.parseInt(request.getParameter("id"));
		
		EquipoDTO equipo = new EquipoDTO(title,  descripcion, fecha_in, fecha_fin);
			
		dao.EditarEquipo(equipo,id);
		
		EquipoDTO aux = new EquipoDTO();
		aux = dao.ListarId();
		
		
		
		
		for(String id_trab: request.getParameterValues("equipo")) {
			int id_trabajadores=Integer.parseInt(id_trab);
			dao.CrearEquipo_Trabajadores(aux.getId(),id_trabajadores);
			System.out.println("Id string trabaja: " +id_trab);
			
		}
		for(String idcamp: request.getParameterValues("campañas")) {
		
			dao.CrearEquipo_Campañas(aux.getId(),idcamp);
			System.out.println("Id string campaña: " +idcamp);
		
		}
		for(String idcent: request.getParameterValues("centros")) {
			int id_centros=Integer.parseInt(idcent);
			dao.CrearEquipo_Centros(aux.getId(),id_centros);
			System.out.println("Id string centro: " +idcent);
			
		}
		
		List<UsuarioDTO> usuarios =dao1.ListarUsuarios();
		List<MaterialDTO> material=dao3.ListarMateriales();
		List<ClienteDTO> cliente = dao4.Listar_Cliente_foreign();
		List<EquipoDTO> equipos= dao5.ListarEquipos();
		List<CentroDTO> centros=dao6.ListarCentros();
		
		session.setAttribute("cliente", cliente);
		session.setAttribute("usuarios", usuarios);
		session.setAttribute("material", material);
		session.setAttribute("equipos", equipos);
		session.setAttribute("centros", centros);
		
		return "Calendario";
	}
	
	@RequestMapping(value="/BorrarEquipo", method = RequestMethod.GET)
	public String BorrarEquipo(HttpServletRequest request,Locale locale, Model model) {
		HttpSession session =request.getSession(true);
		
		int id=Integer.parseInt(request.getParameter("id"));
		//dao5.BorrarPorID(id);
		dao5.BorrarEquipo(id);
		
		List<UsuarioDTO> usuarios =dao1.ListarUsuarios();
		List<EquipoDTO> equipos= dao5.ListarEquipos();
		session.setAttribute("usuarios", usuarios);
		session.setAttribute("equipos", equipos);
		
		return "Gestor_Cuentas";
	}
	
	@RequestMapping(value="/CrearProyecto", method = RequestMethod.POST)
	public String CrearProyecto(HttpServletRequest request,Locale locale, Model model) {
		HttpSession session =request.getSession(true);
		
		String nombre= request.getParameter("nombre");
		String departamentos = request.getParameter("departamentos");
		String tipo_proyecto= request.getParameter("tipo_proyecto");
		String descripcion= request.getParameter("descripcion");
		

		
		
		ProyectoDTO proyecto= new ProyectoDTO(nombre,departamentos,tipo_proyecto,descripcion);
		dao2.NuevoProyecto(proyecto);
		
		
		
		
		
		
		List<ProyectoDTO> proyectos = dao2.ListarProyectos();
		List<UsuarioDTO> usuarios =dao1.ListarUsuarios();
		List<MaterialDTO> material=dao3.ListarMateriales();
		List<ClienteDTO> cliente = dao4.Listar_Cliente_foreign();
		List<EquipoDTO> equipos= dao5.ListarEquipos();
		session.setAttribute("cliente", cliente);
		session.setAttribute("usuarios", usuarios);
		session.setAttribute("material", material);
		session.setAttribute("equipos", equipos);
		session.setAttribute("proyectos", proyectos);
		
		return "Gestor_Cuentas";
	}
		

}
