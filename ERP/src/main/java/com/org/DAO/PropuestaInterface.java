package com.org.DAO;

import java.util.List;

import com.org.DTO.PropuestaDTO;

public interface PropuestaInterface {
	public void NuevaPropuesta(PropuestaDTO propuesta);
	public List<PropuestaDTO> BuscarPorComentariosPropuesta();
	
}
