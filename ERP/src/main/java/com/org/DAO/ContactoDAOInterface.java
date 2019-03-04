package com.org.DAO;

import java.util.List;

import com.org.DTO.ContactoDTO;

public interface ContactoDAOInterface {
	public List<ContactoDTO> ListarContactos();
	public void NuevoContacto(ContactoDTO contacto);
}
