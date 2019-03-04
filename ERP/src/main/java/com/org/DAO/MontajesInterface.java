package com.org.DAO;

import java.util.List;


import com.org.DTO.MontajeDTO;

public interface MontajesInterface {
	public List<MontajeDTO> ListarMontajes();
	public void Actualizar(MontajeDTO montaje, Integer id_montaje);
	public void NuevaTarjeta(MontajeDTO montaje) ;
	public List<MontajeDTO> BuscarPorCentro();
	public void Borrarmontaje(int id);
}
