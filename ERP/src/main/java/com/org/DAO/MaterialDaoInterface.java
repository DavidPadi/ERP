package com.org.DAO;

import java.util.List;

import com.org.DTO.MaterialDTO;


public interface MaterialDaoInterface {

	
		public void CrearMaterial(MaterialDTO material);
		public List<MaterialDTO> ListarMateriales();
		public void BorrarMaterial(int id);
		public void EditarMaterial(MaterialDTO tienda);
		public List<MaterialDTO> Buscar_material(String material);
		
		
	

}
