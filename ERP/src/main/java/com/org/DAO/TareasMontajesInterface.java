package com.org.DAO;

import java.util.List;


import com.org.DTO.TareaMontajeDTO;

public interface TareasMontajesInterface {
	public void NuevaTareasMontaje(TareaMontajeDTO tareas);
	public List<TareaMontajeDTO> BuscarPorComentariosTareasMontaje();

}
