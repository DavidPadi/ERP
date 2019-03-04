package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.BriefingDTO;



	public class BriefingMapper implements RowMapper<BriefingDTO> {
		public BriefingDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			BriefingDTO briefing = new BriefingDTO(); 
			
			
			briefing.setAdjunto(rs.getString("adjunto"));
			briefing.setComentarios(rs.getString("comentarios"));
			briefing.setDescripcion(rs.getString("descripcion"));
			briefing.setEquipo(rs.getString("equipo"));
			briefing.setEstado(rs.getString("estado"));
			briefing.setEtiquetas(rs.getString("etiquetas"));
			briefing.setFases(rs.getString("fases"));
			briefing.setFechaentrega(rs.getString("fechaentrega"));
			briefing.setTitulo(rs.getString("titulo"));
			
			return briefing;
		}
	}

