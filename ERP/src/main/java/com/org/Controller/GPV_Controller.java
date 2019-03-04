package com.org.Controller;

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

import com.org.DAO.CampañaDaoInterface;
import com.org.DAO.GPV_Interface;
import com.org.DAO.MaterialDaoInterface;
import com.org.DAO.Tienda_Interface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.ClienteDTO;
import com.org.DTO.GpvDTO;
import com.org.DTO.MaterialDTO;
import com.org.DTO.TiendaDTO;
import com.org.DTO.UsuarioDTO;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class GPV_Controller {
	private static final Logger logger = LoggerFactory.getLogger(GPV_Controller.class);
	@Autowired
	GPV_Interface dao;
	@Autowired
	private UsuariosDaoInterface dao1;
	@Autowired
	private MaterialDaoInterface dao3;
	@Autowired
	private CampañaDaoInterface dao4;

	
	@RequestMapping(value="/NuevoGPV",method = RequestMethod.POST)
	public String NuevoGPV(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session =request.getSession(true);
		
		
		String nombre=request.getParameter("nombregpv");
		int telefono=Integer.parseInt(request.getParameter("telefono"));
		String email=request.getParameter("email");
		String zona=request.getParameter("zona");
		int tienda=Integer.parseInt(request.getParameter("tienda"));
		
		GpvDTO gpv = new GpvDTO(nombre,telefono,email,zona,tienda);
		dao.CrearGPV(gpv);
		

		List<UsuarioDTO> usuarios =dao1.ListarUsuarios();
		List<MaterialDTO> material=dao3.ListarMateriales();
		List<ClienteDTO> cliente = dao4.Listar_Cliente_foreign();
		session.setAttribute("cliente", cliente);
		session.setAttribute("usuarios", usuarios);
		session.setAttribute("material", material);
		
		return "Gestor_Cuentas";
	}
	@RequestMapping(value="/EditarGPV",method = RequestMethod.POST)
	public String EditarGPV(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session =request.getSession(true);
		
		String nombre=request.getParameter("nombregpv");
		int telefono=Integer.parseInt(request.getParameter("telefono"));
		String email=request.getParameter("email");
		String zona=request.getParameter("zona");
		int tienda=Integer.parseInt(request.getParameter("tienda"));
		
		GpvDTO gpvactualizado = new GpvDTO(nombre,telefono,email,zona,tienda);
		dao.EditarGpv(gpvactualizado);
		
		
		
		
		List<GpvDTO> gpv = dao.ListarGpv();
		List<UsuarioDTO> usuarios =dao1.ListarUsuarios();
		List<MaterialDTO> material=dao3.ListarMateriales();
		
		List<ClienteDTO> cliente = dao4.Listar_Cliente_foreign();
		session.setAttribute("cliente", cliente);
		session.setAttribute("usuarios", usuarios);
		session.setAttribute("material", material);
		return "Gestor_Cuentas";
		
	}
	
}
