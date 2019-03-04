package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.CentroDTO;
import com.org.DTO.ConcursoDTO;


	public class ConcursoMapper implements RowMapper<ConcursoDTO> {
		public ConcursoDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			ConcursoDTO concurso = new ConcursoDTO(); 
			
			concurso.setId(rs.getInt("id"));
			concurso.setTitulo(rs.getString("titulo"));
			concurso.setId_trabajadores(rs.getInt("id_trabajadores"));
			concurso.setFechaentrega(rs.getString("fechaentrega"));
			concurso.setFases(rs.getString("fases"));
			concurso.setEtiquetas(rs.getString("etiquetas"));
			concurso.setAdjunto(rs.getString("adjunto"));
			concurso.setDescripcion(rs.getString("descripcion"));
			concurso.setComentarios(rs.getString("comentarios"));
			concurso.setEstado(rs.getString("estado"));
			return concurso;
		}
	}

