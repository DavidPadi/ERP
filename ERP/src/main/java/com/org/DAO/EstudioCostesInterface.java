package com.org.DAO;

import java.util.List;

import com.org.DTO.EstudioCostesDTO;

public interface EstudioCostesInterface {
	public List<EstudioCostesDTO> BuscarPorComentariosEstudiosCostes();
	public void NuevoEstudiocostes(EstudioCostesDTO estudios);
}
