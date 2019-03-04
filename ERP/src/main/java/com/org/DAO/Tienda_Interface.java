package com.org.DAO;

import java.util.List;

import com.org.DTO.TiendaDTO;


public interface Tienda_Interface {
	public void CrearTienda(TiendaDTO tienda);
	public List<TiendaDTO> ListarTiendas();
	public void BorrarTienda(int id);
	public void EditarTienda(TiendaDTO tienda);
	public List<TiendaDTO> Buscar_realtime(String tienda);
}
