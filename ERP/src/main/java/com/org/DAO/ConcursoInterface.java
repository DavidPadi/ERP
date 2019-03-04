package com.org.DAO;


import java.util.List;

import com.org.DTO.ConcursoDTO;
import com.org.DTO.UsuarioDTO;

public interface ConcursoInterface {
	public void NuevoConcurso(ConcursoDTO concurso) ;
	public List<ConcursoDTO> BuscarPorComentarios() ;
	public List<ConcursoDTO> BuscarTareaporIdTrabajadores(int id_trabajadores);
	public void Actualizar( String estado,int id_trabajadores);

}
