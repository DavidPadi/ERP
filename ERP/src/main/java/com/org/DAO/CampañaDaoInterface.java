package com.org.DAO;

import java.util.List;

import com.org.DTO.Campa�aDTO;
import com.org.DTO.ClienteDTO;

public interface Campa�aDaoInterface {

	
	public void NuevaCampa�a(Campa�aDTO campa�a) ;
	public List<ClienteDTO> Listar_Cliente_foreign();
	public Campa�aDTO BuscarPorCodigo (String id_campanha) ;
	public void EditarCampa�a(Campa�aDTO campa�a);
	public List<Campa�aDTO> ListarCampa�as();
}
