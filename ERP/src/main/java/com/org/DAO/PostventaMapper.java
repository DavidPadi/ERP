package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.ImplantacionDTO;
import com.org.DTO.PostventaDTO;




	public class PostventaMapper implements RowMapper<PostventaDTO> {
		public PostventaDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			PostventaDTO postventa = new PostventaDTO(); 
			
			postventa.setTitulo(rs.getString("titulo"));
			postventa.setEtiquetas(rs.getString("etiquetas"));
			postventa.setDescripcion(rs.getString("descripcion"));
			postventa.setComentarios(rs.getString("comentarios"));
			postventa.setFases(rs.getString("fases"));
			postventa.setFechaentrega(rs.getString("fechaentrega"));
			postventa.setId_trabajadores(rs.getInt("id_trabajadores"));
			postventa.setEstado(rs.getString("estado"));
			
			return postventa;
		}
	}

