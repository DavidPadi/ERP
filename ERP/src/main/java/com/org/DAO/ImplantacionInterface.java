package com.org.DAO;

import java.util.List;


import com.org.DTO.ImplantacionDTO;

public interface ImplantacionInterface {
	public List<ImplantacionDTO> BuscarPorComentariosImplantacion();
	public void NuevaImplantacion(ImplantacionDTO implantacion);
	public List<ImplantacionDTO> BuscarTareaporIdTrabajadores(int id_trabajadores);
	public void ActualizarImplantacion( String estado,int id_trabajadores);
}
