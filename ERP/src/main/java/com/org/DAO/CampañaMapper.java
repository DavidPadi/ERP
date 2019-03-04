package com.org.DAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.CampañaDTO;


public class CampañaMapper implements RowMapper<CampañaDTO> {
		
	public CampañaDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			CampañaDTO campaña = new CampañaDTO(); 
			
			
			//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
			campaña.setId_campanha(rs.getString("id_campanha"));;
			campaña.setEstado(rs.getString("estado"));
			campaña.setMarca(rs.getString("marca"));
			campaña.setNombre(rs.getString("nombre"));
			campaña.setCantidad_tiendas(rs.getInt("cantidad_tiendas"));
			campaña.setLocalizacion(rs.getString("localizacion"));
			campaña.setComentarios(rs.getString("comentarios"));
			campaña.setInterlocutor(rs.getString("interlocutor"));
			campaña.setFecha_inicio(rs.getString("fecha_inicio"));
			campaña.setFecha_fin(rs.getString("fecha_fin"));
			campaña.setCliente(rs.getInt("id_cliente"));
			campaña.setRuta(rs.getString("ruta"));
			
			return campaña;
		}
	}

