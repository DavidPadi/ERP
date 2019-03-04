package com.org.DAO;

import java.util.List;

import com.org.DTO.CentroDTO;
import com.org.DTO.EquipoDTO;

public interface CentroDAOInterface {
	public List<CentroDTO> ListarCentros();
	public void Actualizar(CentroDTO centro, Integer id_centro);
	public void NuevoCentro(CentroDTO nuevoequipo) ;
}
