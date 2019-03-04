 package com.org.Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import com.org.DAO.EquipoDaoInterface;
import com.org.DAO.MaterialDaoInterface;
import com.org.DAO.MontajesInterface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.CampañaDTO;
import com.org.DTO.CentroDTO;
import com.org.DTO.ClienteDTO;
import com.org.DTO.EquipoDTO;
import com.org.DTO.MaterialDTO;
import com.org.DTO.MontajeDTO;
import com.org.DTO.UsuarioDTO;

@Controller
public class Montajes_Controller {

	@Autowired
	private MontajesInterface dao2;
	@Autowired
	EquipoDaoInterface dao;
	
	@RequestMapping(value="/Montajes", method = RequestMethod.GET)
	public String Tienda(HttpServletRequest request,Locale locale, Model model) {
		HttpSession session =request.getSession(true);
		
		List<MontajeDTO> montajes=dao2.ListarMontajes();
		
		session.setAttribute("montajes", montajes);
		
		return "Montajes";
	}
	@RequestMapping(value="/EditarMontaje", method = RequestMethod.POST)
	public String GuardarMontaje(HttpServletRequest request,Locale locale, Model model) {
		
		HttpSession session =request.getSession(true);
		
		
		int cc=Integer.parseInt(request.getParameter("cc"));
		String marca=request.getParameter("marca");
		int numero=Integer.parseInt(request.getParameter("numero"));
		
		String title=request.getParameter("activacion");
		
		String estado_generalactivacion=request.getParameter("estado_activacion");
		String zona=request.getParameter("zona");
		String cadena=request.getParameter("cadena");
		int id= Integer.parseInt(request.getParameter("centro"));
		
		String descripcion=request.getParameter("direccion");
		
		String localidad=request.getParameter("localidad");
		String provincia=request.getParameter("provincia");
		String detalle_exposicion=request.getParameter("detalle_exposicion");
		String tipologia_cliente=request.getParameter("tipologia_cliente");
		
		String start=request.getParameter("fechaprevista_montaje");
		String end=request.getParameter("fechaprevista_desmontaje");
		
		String nombre_gpv=request.getParameter("nombre_gpv");
		int tlfn_gpv=Integer.parseInt(request.getParameter("tlfn_gpv"));
		String mail_gpv=request.getParameter("mail_gpv");
		String comunicaciones_gpv=request.getParameter("comunicaciones_gpv");
		String persona_cargo=request.getParameter("persona_cargo");
		int tlfn=Integer.parseInt(request.getParameter("tlfn"));
		String mail_centro=request.getParameter("mail_centro");
		String comunicaciones_centro=request.getParameter("comunicaciones_centro");
		boolean permite_promo=Boolean.parseBoolean(request.getParameter("permite_promo"));
		boolean hay_producto=Boolean.parseBoolean(request.getParameter("hay_producto"));
		boolean tv=Boolean.parseBoolean(request.getParameter("tv"));
		String fechanoposible_cerrada=request.getParameter("fechanoposible_cerrada");
		String observaciones_planificacion=request.getParameter("observaciones_planificacion");
		String resultado_planificacion=request.getParameter("resultado_planificacion");
		String fechacerradaconcentro=request.getParameter("fechacerradaconcentro");
		String hora_implantacion=request.getParameter("hora_implantacion");
		String fecha_implantacion=request.getParameter("fecha_implantacion");
		String implantado=request.getParameter("implantado");
		String quesehaimplantado=request.getParameter("quesehaimplantado");
		boolean foto= Boolean.parseBoolean(request.getParameter("foto"));
		String espacio=request.getParameter("espacio");
		String no_permitenimplantar=request.getParameter("no_permitenimplantar");
		String tv_nolocalizada=request.getParameter("tv_nolocalizada");
		String nohayinsuficienteproducto=request.getParameter("nohayinsuficienteproducto");
		int numero_visitas=Integer.parseInt(request.getParameter("numero_visitas"));
		String observaciones_implantacion=request.getParameter("observaciones_implantacion");
		String fecha_desmontaje=request.getParameter("fecha_desmontaje");
		String resultado_desmontaje=request.getParameter("resultado_desmontaje");
		String observaciones_desmontaje=request.getParameter("observaciones_desmontaje");
		String responsable_zona=request.getParameter("responsable_zona");
		String pz=request.getParameter("pz");
		String subcontrata=request.getParameter("subcontrata");
		String almacen=request.getParameter("almacen");
		String descripcion_tarjeta=request.getParameter("descripcion_tarjeta");
		String color=request.getParameter("txtColor");
		
		
		MontajeDTO actualizar = new MontajeDTO(cc,marca,numero,title,estado_generalactivacion,zona,cadena,
				descripcion,localidad,provincia,detalle_exposicion,tipologia_cliente,start,
				end,nombre_gpv, tlfn_gpv,mail_gpv,comunicaciones_gpv, persona_cargo,tlfn,
				mail_centro,comunicaciones_centro,permite_promo, hay_producto,tv,fechanoposible_cerrada,observaciones_planificacion,
				resultado_planificacion, fechacerradaconcentro,hora_implantacion,fecha_implantacion ,implantado, quesehaimplantado,
				foto,espacio,no_permitenimplantar,tv_nolocalizada, nohayinsuficienteproducto, numero_visitas,observaciones_implantacion,
				fecha_desmontaje,resultado_desmontaje ,observaciones_desmontaje,responsable_zona,pz,
				subcontrata,almacen,descripcion_tarjeta,color);
		
		dao2.Actualizar(actualizar,id);
		
		
		
		
		List<MontajeDTO> montajes=dao2.ListarMontajes();
		
		session.setAttribute("montajes", montajes);
		return "Montajes";
	}

	
	
	@RequestMapping(value="/BorrarMontaje", method = RequestMethod.POST)
	public String BorrarMontaje(HttpServletRequest request,Locale locale, Model model) {
		
		HttpSession session =request.getSession(true);
		
		int id= Integer.parseInt(request.getParameter("id"));
		
		System.out.println("el id es "+id);
		dao2.Borrarmontaje(id);
		
		List<MontajeDTO> montajes=dao2.ListarMontajes();
		
		session.setAttribute("montajes", montajes);
		return "Montajes";

	}
}