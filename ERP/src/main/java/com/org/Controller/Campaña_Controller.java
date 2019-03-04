 package com.org.Controller;

import java.io.IOException;
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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.org.DAO.CampañaDaoInterface;
import com.org.DAO.ClienteInterface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.CampañaDTO;
import com.org.DTO.ClienteDTO;

@Controller
public class Campaña_Controller {
	private static final Logger logger = LoggerFactory.getLogger(Campaña_Controller.class);
	
	@Autowired
	private UploadFileService uploadFileService;
	
	@Autowired
	private UsuariosDaoInterface dao;
	@Autowired
	private CampañaDaoInterface dao1;
	@Autowired
	private CampañaDaoInterface dao2;
	@Autowired
	private ClienteInterface dao3;
	
	
	@RequestMapping(value="/Campañas",method = RequestMethod.GET)
	public String Campañas(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		List<CampañaDTO> campanha=dao2.ListarCampañas();
		session.setAttribute("campanha", campanha);
		List<ClienteDTO> cliente=dao3.Leerclientes();
		session.setAttribute("cliente", cliente);
		return "Campañas";
		
	}
	
	
	@RequestMapping(value="/Campaña_Nueva", method = RequestMethod.POST)
	public String añadir_campaña(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("briefing") MultipartFile file) throws ParseException {
	
		HttpSession session = request.getSession(true);
		

		String id_campaña= request.getParameter("id_camp");
		System.out.println(id_campaña);
		int c=Integer.parseInt(request.getParameter("cliente"));
		System.out.println(c);
		String marca=request.getParameter("Marca");
		System.out.println(marca);
		String nombre_camp=request.getParameter("Nombre_camp");
		int cantidad_tiendas=Integer.parseInt(request.getParameter("cantidad_tiendas"));
		String localizacion_geo=request.getParameter("localizacion_geo");
		String estado=request.getParameter("estado");
		String fecha_in=request.getParameter("Fecha_Inicio");
		System.out.println("fecha "+fecha_in);
		
		String fecha_fin=request.getParameter("Fecha_Fin");
		System.out.println(fecha_fin);
		String interlocutor=request.getParameter("interlocutor");
		String comentarios =request.getParameter("comentarios");		
		
		//guardar archivo
		try {
			uploadFileService.saveFile(file);
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String ruta=uploadFileService.getRuta();
		
		CampañaDTO campaña = new CampañaDTO(id_campaña,c, marca, nombre_camp, cantidad_tiendas,
				 localizacion_geo, comentarios, interlocutor, fecha_in, fecha_fin, estado,ruta);
		
		if(dao1.BuscarPorCodigo(id_campaña)== null) {
			dao1.NuevaCampaña(campaña);
			
			
			List<CampañaDTO> campanha=dao2.ListarCampañas();
			session.setAttribute("campanha", campanha);
			List<ClienteDTO> cliente=dao3.Leerclientes();
			session.setAttribute("cliente", cliente);
			
			return "Campañas";
		}else {
			return "Error";
		}
		
		
		
	}
	@RequestMapping(value="/Editar_Campaña", method = RequestMethod.POST)
	public String editar_campaña(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("briefing") MultipartFile file) {
		
		HttpSession session = request.getSession(true);
		
		SimpleDateFormat c = new SimpleDateFormat("yyyy-MM-dd");
		String id_campaña= request.getParameter("id_camp");
		System.out.println(id_campaña);
		String marca=request.getParameter("Marca");
		System.out.println(marca);
		String nombre_camp=request.getParameter("Nombre_camp");
		int cantidad_tiendas=Integer.parseInt(request.getParameter("cantidad_tiendas"));
		String localizacion_geo=request.getParameter("localizacion_geo");
		String estado=request.getParameter("estado");
		String fecha_i=request.getParameter("Fecha_Inicio");
		String fecha_f=request.getParameter("Fecha_Fin");
		
		
		
		String interlocutor=request.getParameter("interlocutor");
		String comentarios =request.getParameter("comentarios");		
		
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				//Obtenemos la ruta relativa de las imagenes del proyecto
		String ruta=uploadFileService.getRuta();
		System.out.println("ruta es"+ruta);
		
		
		CampañaDTO editar=new CampañaDTO( id_campaña, 0,  marca,  nombre_camp,  cantidad_tiendas, 
				 localizacion_geo,  comentarios,  interlocutor,  fecha_i,  fecha_f,
				 estado,  ruta);
		
		
		dao1.EditarCampaña(editar);
		
		List<CampañaDTO> campanha=dao2.ListarCampañas();
		session.setAttribute("campanha", campanha);
		
		return "Campañas";
	}
	
	@RequestMapping(value="/BorrarCampaña", method = RequestMethod.POST)
	public String Borrar_Campaña(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		List<CampañaDTO> campanha=dao2.ListarCampañas();
		session.setAttribute("campanha", campanha);
		
		return "Campañas";
	}
}
