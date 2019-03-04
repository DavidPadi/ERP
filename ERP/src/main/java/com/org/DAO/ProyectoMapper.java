package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


import com.org.DTO.ProyectoDTO;


public class ProyectoMapper implements RowMapper<ProyectoDTO>{
	public ProyectoDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
		ProyectoDTO proyecto = new ProyectoDTO(); 
		
		
		//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
		proyecto.setNombre(rs.getString("nombre"));
		proyecto.setDepartamentos(rs.getString("departamentos"));
		proyecto.setTipo_proyecto(rs.getString("tipo_proyecto"));
		proyecto.setDescripcion(rs.getString("descripcion"));
		
		return proyecto;
	}
}
