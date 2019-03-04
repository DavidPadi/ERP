package com.org.DAO;

import java.util.List;

import com.org.DTO.ResultadocampDTO;

public interface ResultadocampInterface {
	public void NuevoResultadocamp(ResultadocampDTO resultado);
	public List<ResultadocampDTO> BuscarPorComentariosResultadocamp();
}
