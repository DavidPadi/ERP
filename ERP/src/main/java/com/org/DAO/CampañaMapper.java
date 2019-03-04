package com.org.DAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.Campa�aDTO;


public class Campa�aMapper implements RowMapper<Campa�aDTO> {
		
	public Campa�aDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			Campa�aDTO campa�a = new Campa�aDTO(); 
			
			
			//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
			campa�a.setId_campanha(rs.getString("id_campanha"));;
			campa�a.setEstado(rs.getString("estado"));
			campa�a.setMarca(rs.getString("marca"));
			campa�a.setNombre(rs.getString("nombre"));
			campa�a.setCantidad_tiendas(rs.getInt("cantidad_tiendas"));
			campa�a.setLocalizacion(rs.getString("localizacion"));
			campa�a.setComentarios(rs.getString("comentarios"));
			campa�a.setInterlocutor(rs.getString("interlocutor"));
			campa�a.setFecha_inicio(rs.getString("fecha_inicio"));
			campa�a.setFecha_fin(rs.getString("fecha_fin"));
			campa�a.setCliente(rs.getInt("id_cliente"));
			campa�a.setRuta(rs.getString("ruta"));
			
			return campa�a;
		}
	}

