package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.EquipoDTO;




public class EquipoMapper implements RowMapper<EquipoDTO> {
	  
		public EquipoDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			EquipoDTO equipo = new EquipoDTO(); 
			
			
			//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
			equipo.setTitulo(rs.getString("titulo"));
			equipo.setDescripcion(rs.getString("descripcion"));
			equipo.setFecha_in(rs.getString("fecha_in"));
			equipo.setFecha_fin(rs.getString("fecha_fin"));
			equipo.setId(rs.getInt("id"));
			return equipo;
		}
}
