package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.MaterialDTO;


public class MaterialMapper implements RowMapper<MaterialDTO> {
	public MaterialDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
		MaterialDTO material = new MaterialDTO(); 
		
		
		//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
		material.setNombre(rs.getString("nombre"));
		material.setCantidad(rs.getInt("cantidad"));;
		return material;
	}
}
