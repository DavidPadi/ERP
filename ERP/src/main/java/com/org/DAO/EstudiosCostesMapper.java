package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.BriefingDTO;
import com.org.DTO.EstudioCostesDTO;



	public class EstudiosCostesMapper implements RowMapper<EstudioCostesDTO> {
		public EstudioCostesDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			EstudioCostesDTO estudios = new EstudioCostesDTO(); 
			
		
			estudios.setAdjunto(rs.getString("adjunto"));
			estudios.setComentarios(rs.getString("comentarios"));
			estudios.setDescripcion(rs.getString("descripcion"));
			estudios.setEquipo(rs.getString("equipo"));
			estudios.setEstado(rs.getString("estado"));
			estudios.setEtiquetas(rs.getString("etiquetas"));
			estudios.setFases(rs.getString("fases"));
			estudios.setFechaentrega(rs.getString("fechaentrega"));
			estudios.setTitulo(rs.getString("titulo"));
			
			return estudios;
		}
	}

