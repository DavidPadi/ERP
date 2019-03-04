package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


import com.org.DTO.VideoDTO;



	public class VideoMapper implements RowMapper<VideoDTO> {
		public VideoDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			VideoDTO video = new VideoDTO(); 
			
		
			video.setComentarios(rs.getString("comentarios"));
			video.setTitulo(rs.getString("titulo"));
			video.setEtiquetas(rs.getString("etiquetas"));
			video.setFases(rs.getString("fases"));
			video.setId_trabajadores(rs.getInt("id_trabajadores"));
			video.setFechaentrega(rs.getString("fechaentrega"));
			video.setDescripcion(rs.getString("descripcion"));
			video.setEstado(rs.getString("estado"));
			
			return video;
		}
	}

