package com.org.Controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.org.DAO.EquipoDaoInterface;
import com.org.DAO.MontajesInterface;
import com.org.DTO.EquipoDTO;
import com.org.DTO.MontajeDTO;

@Controller
public class Eventos {
	@Autowired
	private EquipoDaoInterface dao;
	@Autowired
	private MontajesInterface dao2;
	
	private static final Logger logger = LoggerFactory.getLogger(Eventos.class);
	
	@RequestMapping(value = "/Eventos", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String Eventos() {
		Gson gson = new Gson();
		List<EquipoDTO> equipos= dao.ListarEquipos();
		
		final Gson prettyGson = new GsonBuilder().setPrettyPrinting().create();
		final String json = prettyGson.toJson(equipos);
		return json;
	}
	@RequestMapping(value = "/Eventos1", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String Eventos1() {
		Gson gson = new Gson();
		List<MontajeDTO> montajes=dao2.ListarMontajes();
		
		final Gson prettyGson = new GsonBuilder().setPrettyPrinting().create();
		final String json = prettyGson.toJson(montajes);
		return json;
	}
	
}