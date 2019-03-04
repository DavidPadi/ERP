package com.org.Controller;

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

import com.org.DAO.CampañaDaoInterface;
import com.org.DAO.CentroDAOInterface;
import com.org.DAO.ConcursoInterface;
import com.org.DAO.ContactoDAOInterface;
import com.org.DAO.EquipoDaoInterface;
import com.org.DAO.MontajesInterface;
import com.org.DAO.ProyectoInterface;
import com.org.DAO.TareaInterface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.CampañaDTO;
import com.org.DTO.CentroDTO;
import com.org.DTO.ContactoDTO;
import com.org.DTO.EquipoDTO;
import com.org.DTO.MontajeDTO;
import com.org.DTO.ProyectoDTO;
import com.org.DTO.UsuarioDTO;

@Controller
public class ContactoController {

	@Autowired
	private ContactoDAOInterface dao7;
	
	
	
	@RequestMapping(value="/Contacto",method = RequestMethod.GET)
	public String Contacto(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);

		List<ContactoDTO> telefono=dao7.ListarContactos();
		session.setAttribute("telefono", telefono);
		return  "Contacto";
		
	}
	@RequestMapping(value="/NuevoContacto",method = RequestMethod.POST)
	public String NuevoContacto(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		int centro=Integer.parseInt(request.getParameter("centro"));
		int seguridad=Integer.parseInt(request.getParameter("seguridad"));
		int patrimonio=Integer.parseInt(request.getParameter("patrimonio"));
		int muelle=Integer.parseInt(request.getParameter("muelle"));
		 
		ContactoDTO contacto= new ContactoDTO(centro,seguridad,patrimonio,muelle);
		dao7.NuevoContacto(contacto);
		
		List<ContactoDTO> telefono=dao7.ListarContactos();
		session.setAttribute("telefono", telefono);
		
		return  "Contacto";
	}
}
