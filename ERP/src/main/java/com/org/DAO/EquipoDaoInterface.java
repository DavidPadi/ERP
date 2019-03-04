package com.org.DAO;

import java.util.List;

import com.org.DTO.EquipoDTO;



public interface EquipoDaoInterface{

	
		public void CrearEquipo(EquipoDTO equipo);
		public List<EquipoDTO> ListarEquipos();
		public void BorrarPorID(int id);
		public void EditarEquipo(EquipoDTO equipo, int id);
		public EquipoDTO ListarId();
		public void CrearEquipo_Trabajadores(int id, int id_trabajadores);
		public void CrearEquipo_Campañas(int id,String id_campanha);
		public void CrearEquipo_Centros(int id,int id_centros);
		public EquipoDTO BuscaPorTitulo(String title);
		public void BorrarEquipo(int id) ;
}
