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

import com.org.DAO.Campa�aDaoInterface;
import com.org.DAO.ClienteInterface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.Campa�aDTO;
import com.org.DTO.ClienteDTO;

@Controller
public class Campa�a_Controller {
	private static final Logger logger = LoggerFactory.getLogger(Campa�a_Controller.class);
	
	@Autowired
	private UploadFileService uploadFileService;
	
	@Autowired
	private UsuariosDaoInterface dao;
	@Autowired
	private Campa�aDaoInterface dao1;
	@Autowired
	private Campa�aDaoInterface dao2;
	@Autowired
	private ClienteInterface dao3;
	
	
	@RequestMapping(value="/Campa�as",method = RequestMethod.GET)
	public String Campa�as(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		List<Campa�aDTO> campanha=dao2.ListarCampa�as();
		session.setAttribute("campanha", campanha);
		List<ClienteDTO> cliente=dao3.Leerclientes();
		session.setAttribute("cliente", cliente);
		return "Campa�as";
		
	}
	
	
	@RequestMapping(value="/Campa�a_Nueva", method = RequestMethod.POST)
	public String a�adir_campa�a(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("briefing") MultipartFile file) throws ParseException {
	
		HttpSession session = request.getSession(true);
		

		String id_campa�a= request.getParameter("id_camp");
		System.out.println(id_campa�a);
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
		
		Campa�aDTO campa�a = new Campa�aDTO(id_campa�a,c, marca, nombre_camp, cantidad_tiendas,
				 localizacion_geo, comentarios, interlocutor, fecha_in, fecha_fin, estado,ruta);
		
		if(dao1.BuscarPorCodigo(id_campa�a)== null) {
			dao1.NuevaCampa�a(campa�a);
			
			
			List<Campa�aDTO> campanha=dao2.ListarCampa�as();
			session.setAttribute("campanha", campanha);
			List<ClienteDTO> cliente=dao3.Leerclientes();
			session.setAttribute("cliente", cliente);
			
			return "Campa�as";
		}else {
			return "Error";
		}
		
		
		
	}
	@RequestMapping(value="/Editar_Campa�a", method = RequestMethod.POST)
	public String editar_campa�a(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("briefing") MultipartFile file) {
		
		HttpSession session = request.getSession(true);
		
		SimpleDateFormat c = new SimpleDateFormat("yyyy-MM-dd");
		String id_campa�a= request.getParameter("id_camp");
		System.out.println(id_campa�a);
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
		
		
		Campa�aDTO editar=new Campa�aDTO( id_campa�a, 0,  marca,  nombre_camp,  cantidad_tiendas, 
				 localizacion_geo,  comentarios,  interlocutor,  fecha_i,  fecha_f,
				 estado,  ruta);
		
		
		dao1.EditarCampa�a(editar);
		
		List<Campa�aDTO> campanha=dao2.ListarCampa�as();
		session.setAttribute("campanha", campanha);
		
		return "Campa�as";
	}
	
	@RequestMapping(value="/BorrarCampa�a", method = RequestMethod.POST)
	public String Borrar_Campa�a(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		List<Campa�aDTO> campanha=dao2.ListarCampa�as();
		session.setAttribute("campanha", campanha);
		
		return "Campa�as";
	}
}
