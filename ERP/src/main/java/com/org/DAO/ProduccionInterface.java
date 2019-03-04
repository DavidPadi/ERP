package com.org.DAO;

import java.util.List;

import com.org.DTO.ProduccionDTO;

public interface ProduccionInterface {
	public void NuevaProduccion(ProduccionDTO produccion);
	public List<ProduccionDTO> BuscarPorComentariosProduccion();
	public List<ProduccionDTO> BuscarTareaporIdTrabajadores(int id_trabajadores) ;
	public void ActualizarProduccion( String estado,int id_trabajadores);
}
