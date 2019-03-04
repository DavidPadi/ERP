package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.TiendaDTO;



public class TiendaMapper implements RowMapper<TiendaDTO> {
	  
		public TiendaDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			TiendaDTO tienda = new TiendaDTO(); 
			
			
			//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
			tienda.setId_tienda(rs.getInt("id_tienda"));
			tienda.setCadena(rs.getString("cadena"));
			tienda.setDireccion(rs.getString("direccion"));
			tienda.setLocalidad(rs.getString("localidad"));
			tienda.setNombre(rs.getString("nombre"));
			tienda.setEstado(rs.getString("estado"));
			tienda.setTiendatipo(rs.getString("tiendatipo"));
			tienda.setTipologia(rs.getString("tipologia"));
			
			return tienda;
		}
}
