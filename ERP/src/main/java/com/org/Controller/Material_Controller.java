package com.org.Controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.DAO.MaterialDaoInterface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.MaterialDTO;
import com.org.DTO.TiendaDTO;

@Controller
public class Material_Controller {
	@Autowired
	private MaterialDaoInterface dao;
	
	@RequestMapping(value="/material_nuevo",method = RequestMethod.POST)
	public String tienda_nueva(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		
		String nombre_material=request.getParameter("nombrematerial");
		int cantidadisponible=Integer.parseInt(request.getParameter("cantidadisponible"));
		MaterialDTO material= new MaterialDTO(nombre_material,cantidadisponible);
		dao.CrearMaterial(material);
		return "Gestor_Cuentas";

	}
}
