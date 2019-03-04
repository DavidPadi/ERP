package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.ResultadocampDTO;




	public class ResultadocampMapper implements RowMapper<ResultadocampDTO> {
		public ResultadocampDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			ResultadocampDTO resultado = new ResultadocampDTO(); 
			
		
			resultado.setComentarios(rs.getString("comentarios"));
			resultado.setTitulo(rs.getString("titulo"));
			resultado.setEtiquetas(rs.getString("etiquetas"));
			resultado.setFases(rs.getString("fases"));
			resultado.setId_trabajadores(rs.getInt("id_trabajadores"));
			resultado.setFechaentrega(rs.getString("fechaentrega"));
			resultado.setDescripcion(rs.getString("descripcion"));
			resultado.setEstado(rs.getString("estado"));
			
			return resultado;
		}
	}

