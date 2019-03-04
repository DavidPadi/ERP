package com.org.Controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Base64;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.org.DAO.EquipoDaoInterface;
import com.org.DAO.MontajesInterface;
import com.org.DTO.EquipoDTO;
import com.org.DTO.MontajeDTO;

import org.springframework.stereotype.Controller;

@Controller
public class Tarjeta_Controller {
	@Autowired
	private UploadFileService uploadFileService;
	@Autowired
	private MontajesInterface dao;
	
	/*AÑADIR TARJETAS DE GESTOR DE CUENTAS
	 * 
	 * HE INTRODUCIDO DOS COLUMNAS MAS EN MONTAJES QUE SON DESCRIPCION TRABAJO Y ADJUNTO
	 * LEER POR GETPARAMETER DEL FORMULARIO E INTRODUCIRLO COMO NUEVO MONTAJE EN LA TABLA MONTAJES
	 * ADJUSTAR EL TAMÑAO DE LA TABLA MONTAJES
	 * EN AÑDIR CAMPAÑA, RELACIONADAS POR SU NOMBRE POR EJEMPLO MUNDIAL, CON JS OCULTAR COLUMNAS
	 * 
	 * 
	 * EN ESTE METODO NO ES UN UPDATE DE LA TABLA MONTAJES ES UN INSERT*/
	
	@RequestMapping(value = "/Tarjetapteplanificacion", method = RequestMethod.POST)
	public String Tarjetapteplanificacion(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws IOException {
		
		HttpSession session = request.getSession(true);
		
		String title=request.getParameter("title");
		String estado_generalactivacion= request.getParameter("estado_generalactivacion");
		String start= request.getParameter("fechaprevista_montaje");
		String end= request.getParameter("fechaprevista_desmontaje");
		int cc= Integer.parseInt(request.getParameter("cc"));
		String marca=request.getParameter("marca");
		String descripcion_tarjeta=request.getParameter("descripcion_trabajo");
		String observaciones_planificacion=request.getParameter("comentarios");
		String color=request.getParameter("color");
		
		String nada="0";
		int cero=0;
		Boolean op=false;
		//guardar archivo
		try {
			uploadFileService.saveFile(file);
		}catch(IOException e) {
			e.printStackTrace();
		}
		//String ruta=uploadFileService.getRuta();
		
		String ruta=saveFile(file);
		
		MontajeDTO insertar=new MontajeDTO(cc, marca,  cero,  title,  estado_generalactivacion, 
		 nada,  nada,  nada,  nada,  nada,  nada, 
		 nada,  nada,  start,  end,  nada,  cero,  nada, 
		 nada,  nada,  cero,  nada,  nada,  op, op, op,
		 nada,  observaciones_planificacion,  nada,  nada,  nada, 
		 nada,  nada,  nada,  op,  nada,  nada,  nada, 
		 nada, cero,  nada,  nada,  nada,  nada,  nada, 
		 nada,  nada,  nada,  descripcion_tarjeta, ruta,  color);
		
		
		System.out.println("Descripcion"+ descripcion_tarjeta);
		dao.NuevaTarjeta(insertar);
		
		request.setAttribute("ruta", ruta);
		session.setAttribute("ruta", ruta);
		model.addAttribute("imagen", ruta);
		
		
		List<MontajeDTO> montajes=dao.ListarMontajes();
		session.setAttribute("montajes", montajes);
		
		return "Estados";
	}

	
	
	
	
	




	/*MEOTODO PARA GUARDAR EN ENLACE DE LAS FOTOS QUE SE SUBAN*/
	public String saveFile(MultipartFile file) throws IOException {
		String upload_folder="C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//";
		
		if(!file.isEmpty()) {
			byte[] bytes=file.getBytes();
			Path path=Paths.get(upload_folder + file.getOriginalFilename());
			Files.write(path, bytes);
			
			return obtenFoto(path, upload_folder);
		}
		return "vacio"; 
	}
	private String obtenFoto(Path path, String upload_folder) {
		return upload_folder+path.getFileName();
		
	}
	public String getRuta() {
		String upload_folder="C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//";
		return upload_folder;
	}
	
	

}
