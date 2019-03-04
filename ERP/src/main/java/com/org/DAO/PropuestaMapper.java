package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.PropuestaDTO;


	public class PropuestaMapper implements RowMapper<PropuestaDTO> {
		public PropuestaDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			PropuestaDTO propuesta = new PropuestaDTO(); 
			
		
			propuesta.setAdjunto(rs.getString("adjunto"));
			propuesta.setComentarios(rs.getString("comentarios"));
			propuesta.setDescripcion(rs.getString("descripcion"));
			propuesta.setEquipo(rs.getString("equipo"));
			propuesta.setEstado(rs.getString("estado"));
			propuesta.setEtiquetas(rs.getString("etiquetas"));
			propuesta.setFases(rs.getString("fases"));
			propuesta.setFechaentrega(rs.getString("fechaentrega"));
			propuesta.setTitulo(rs.getString("titulo"));
			
			return propuesta;
		}
	}

