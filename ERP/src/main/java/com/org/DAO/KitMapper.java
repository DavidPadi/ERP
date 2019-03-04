package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.KitDTO;



	public class KitMapper implements RowMapper<KitDTO> {
		public KitDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			KitDTO kit = new KitDTO(); 
			
		
			kit.setComentarios(rs.getString("comentarios"));
			kit.setTitulo(rs.getString("titulo"));
			kit.setEtiquetas(rs.getString("etiquetas"));
			kit.setFases(rs.getString("fases"));
			kit.setId_trabajadores(rs.getInt("id_trabajadores"));
			kit.setFechaentrega(rs.getString("fechaentrega"));
			kit.setDescripcion(rs.getString("descripcion"));
			kit.setEstado(rs.getString("estado"));
			
			return kit;
		}
	}

