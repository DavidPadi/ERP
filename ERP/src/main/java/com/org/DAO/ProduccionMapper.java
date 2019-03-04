package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.ProduccionDTO;



	public class ProduccionMapper implements RowMapper<ProduccionDTO> {
		public ProduccionDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			ProduccionDTO produccion = new ProduccionDTO(); 
			
			
			produccion.setComentarios(rs.getString("comentarios"));
			produccion.setTitulo(rs.getString("titulo"));
			produccion.setEtiquetas(rs.getString("etiquetas"));
			produccion.setFases(rs.getString("fases"));
			produccion.setId_trabajadores(rs.getInt("id_trabajadores"));
			produccion.setFechaentrega(rs.getString("fechaentrega"));
			produccion.setDescripcion(rs.getString("descripcion"));
			produccion.setEstado(rs.getString("estado"));
			
			return produccion;
		}
	}

