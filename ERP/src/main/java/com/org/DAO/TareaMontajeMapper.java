package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


import com.org.DTO.TareaMontajeDTO;


	public class TareaMontajeMapper implements RowMapper<TareaMontajeDTO> {
		public TareaMontajeDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			TareaMontajeDTO tarea = new TareaMontajeDTO(); 
			
		
			tarea.setComentarios(rs.getString("comentarios"));
			tarea.setTitulo(rs.getString("titulo"));
			tarea.setEtiquetas(rs.getString("etiquetas"));
			tarea.setFases(rs.getString("fases"));
			tarea.setId_trabajadores(rs.getInt("id_trabajadores"));
			tarea.setFechaentrega(rs.getString("fechaentrega"));
			tarea.setDescripcion(rs.getString("descripcion"));
			tarea.setEstado(rs.getString("estado"));
			
			return tarea;
		}
	}

