package com.org.DAO;

import java.util.List;

import com.org.DTO.GpvDTO;

public interface GPV_Interface {
		
	
	public void CrearGPV(GpvDTO gpv);
	public List<GpvDTO> ListarGpv();
	public void EditarGpv(GpvDTO gpvactualizado);
}
