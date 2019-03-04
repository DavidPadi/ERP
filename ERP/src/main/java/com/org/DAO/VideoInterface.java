package com.org.DAO;

import java.util.List;

import com.org.DTO.VideoDTO;

public interface VideoInterface {
	public List<VideoDTO> BuscarPorComentariosVideo();
	public void NuevoVideo(VideoDTO video);

}
