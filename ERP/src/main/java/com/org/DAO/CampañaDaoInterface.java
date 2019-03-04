package com.org.DAO;

import java.util.List;

import com.org.DTO.CampañaDTO;
import com.org.DTO.ClienteDTO;

public interface CampañaDaoInterface {

	
	public void NuevaCampaña(CampañaDTO campaña) ;
	public List<ClienteDTO> Listar_Cliente_foreign();
	public CampañaDTO BuscarPorCodigo (String id_campanha) ;
	public void EditarCampaña(CampañaDTO campaña);
	public List<CampañaDTO> ListarCampañas();
}
