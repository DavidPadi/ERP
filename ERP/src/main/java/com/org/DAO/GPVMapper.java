package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.GpvDTO;


public class GPVMapper implements RowMapper<GpvDTO>{
	public GpvDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
		GpvDTO gpv = new GpvDTO(); 
		
		
		//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
		gpv.setTienda(rs.getInt("id_tienda"));
		gpv.setNombre(rs.getString("nombre"));
		gpv.setTelefono(rs.getInt("telefono"));
		gpv.setEmail(rs.getString("email"));
		gpv.setZona(rs.getString("zona"));
		
		return gpv;
	}
}
