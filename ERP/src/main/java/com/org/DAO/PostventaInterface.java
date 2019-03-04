package com.org.DAO;

import java.util.List;

import com.org.DTO.PostventaDTO;

public interface PostventaInterface {
	public List<PostventaDTO> BuscarPorComentariosPostventa();
	public void NuevaPostventa(PostventaDTO postventa);
	public List<PostventaDTO> BuscarTareaporIdTrabajadores(int id_trabajadores) ;
	public void ActualizarPostventa( String estado,int id_trabajadores);
}
