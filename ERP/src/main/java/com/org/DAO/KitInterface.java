package com.org.DAO;

import java.util.List;

import com.org.DTO.KitDTO;

public interface KitInterface {
	public void NuevoKit(KitDTO kit);
	public List<KitDTO> BuscarPorComentariosKit();
}
