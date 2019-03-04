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


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.DAO.CentroDAOInterface;

import com.org.DTO.CentroDTO;
import com.org.DTO.EquipoDTO;


@Controller
public class Centro_Controller {

	@Autowired
	private CentroDAOInterface dao;
	
	@RequestMapping(value="/Centros", method = RequestMethod.GET)
	public String Centros(HttpServletRequest request,Locale locale, Model model) {
		HttpSession session =request.getSession(true);
		
		List<CentroDTO> centros=dao.ListarCentros();
		
		session.setAttribute("centros", centros);
		
		return "Centros";
	}
	@RequestMapping(value="/EditarCentro", method = RequestMethod.POST)
	public String EditarCentros(HttpServletRequest request,Locale locale, Model model) {
		HttpSession session =request.getSession(true);
		
		String provincia=request.getParameter("provincia");
		String cadena=request.getParameter("cadena");
		String localidad=request.getParameter("localidad");
		int id_centro=Integer.parseInt(request.getParameter("centros"));
		int cp=Integer.parseInt(request.getParameter("cp"));
		String direccion=request.getParameter("direccion");
		String plataforma=request.getParameter("plataforma");
		String enviar_doc=request.getParameter("enviardoc");
		String horario_personal_externo=request.getParameter("horario_personal_externo");
		String horario_muelle=request.getParameter("horariomuelle");
		int telefonocentro=Integer.parseInt(request.getParameter("tlfcentro"));
		int patrimonio=Integer.parseInt(request.getParameter("tlfpatrimonio"));
		int seguridad=Integer.parseInt(request.getParameter("tlfseguridad"));
		int muelle=Integer.parseInt(request.getParameter("tlfmuelle"));
		String persona_contacto=request.getParameter("personacontacto");
		String responsable=request.getParameter("responsable");
		int telefono=Integer.parseInt(request.getParameter("telefono"));
		String fax=request.getParameter("fax");
		String caja_central=request.getParameter("cajacentral");
		String personal_seguridad=request.getParameter("personalseguridad");
		String email=request.getParameter("email");
		String servicio=request.getParameter("servicio");
		String rrhh=request.getParameter("rrhh");
		String oficina=request.getParameter("oficina");
		String perfumeria=request.getParameter("perfumeria");
		String liquidos=request.getParameter("liquidos");
		String alimentacion=request.getParameter("alimentacion");
		
		
		CentroDTO actualizar = new CentroDTO(provincia, cadena,localidad,cp,direccion, plataforma, enviar_doc, 
				horario_personal_externo, horario_muelle, telefonocentro, 
				patrimonio, seguridad, muelle, persona_contacto, responsable, 
				telefono, fax, caja_central, personal_seguridad, email, 
				servicio, rrhh, oficina, perfumeria, liquidos, 
				alimentacion);
		
		dao.Actualizar(actualizar,id_centro);
		
		
		
		List<CentroDTO> centros=dao.ListarCentros();
		
		session.setAttribute("centros", centros);
		return "Centros";
	}
	@RequestMapping(value="/GuardarCentro", method = RequestMethod.POST)
	public String GuardarCentros(HttpServletRequest request,Locale locale, Model model) {
		HttpSession session =request.getSession(true);
		
		
			String provincia=request.getParameter("provincia");
			String cadena=request.getParameter("cadena");
			String localidad=request.getParameter("localidad");
			String centros=request.getParameter("centros");
			int cp=Integer.parseInt(request.getParameter("cp"));
			String direccion=request.getParameter("direccion");
			String plataforma=request.getParameter("plataforma");
			String enviar_doc=request.getParameter("enviardoc");
			String horario_personal_externo=request.getParameter("horario_personal_externo");
			String horario_muelle=request.getParameter("horariomuelle");
			int telefonocentro=Integer.parseInt(request.getParameter("tlfcentro"));
			int patrimonio=Integer.parseInt(request.getParameter("tlfpatrimonio"));
			int seguridad=Integer.parseInt(request.getParameter("tlfseguridad"));
			int muelle=Integer.parseInt(request.getParameter("tlfmuelle"));
			String persona_contacto=request.getParameter("personacontacto");
			String responsable=request.getParameter("responsable");
			int telefono=Integer.parseInt(request.getParameter("telefono"));
			String fax=request.getParameter("fax");
			String caja_central=request.getParameter("cajacentral");
			String personal_seguridad=request.getParameter("personalseguridad");
			String email=request.getParameter("email");
			String servicio=request.getParameter("servicio");
			String rrhh=request.getParameter("rrhh");
			String oficina=request.getParameter("oficina");
			String perfumeria=request.getParameter("perfumeria");
			String liquidos=request.getParameter("liquidos");
			String alimentacion=request.getParameter("alimentacion");
		
		
		//Guardar Centro
		CentroDTO nuevoequipo = new CentroDTO(provincia, cadena,localidad,centros,cp,direccion, plataforma, enviar_doc, 
				horario_personal_externo, horario_muelle, telefonocentro, 
				patrimonio, seguridad, muelle, persona_contacto, responsable, 
				telefono, fax, caja_central, personal_seguridad, email, 
				servicio, rrhh, oficina, perfumeria, liquidos, 
				alimentacion);
		
		dao.NuevoCentro(nuevoequipo);
		
		List<CentroDTO> centros2=dao.ListarCentros();
		
		session.setAttribute("centros", centros2);
		return "Centros";
	}
}