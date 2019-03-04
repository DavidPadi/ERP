package com.org.DAO;

import java.util.List;



import com.org.DTO.ProyectoDTO;

public interface ProyectoInterface {
	public List<ProyectoDTO> ListarProyectos();
	public void NuevoProyecto(ProyectoDTO proyecto) ;
	public List<ProyectoDTO> BuscarPorNombre();
	public void BorrarProyecto(int id);
}
