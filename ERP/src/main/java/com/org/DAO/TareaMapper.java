package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;



import com.org.DTO.TareaDTO;


public class TareaMapper implements RowMapper<TareaDTO>{
	public TareaDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
		TareaDTO tarea = new TareaDTO(); 
		
		
		//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
		tarea.setId(rs.getInt("id"));
		tarea.setConcurso(rs.getString("concurso"));
		tarea.setBriefing(rs.getString("briefing"));
		tarea.setEstudio_costes(rs.getString("estudio_costes"));
		tarea.setImplantacion(rs.getString("implantacion"));
		tarea.setKit(rs.getString("kit"));
		tarea.setMontajes(rs.getString("montajes"));
		tarea.setPostventa(rs.getString("postventa"));
		tarea.setProduccion(rs.getString("produccion"));
		tarea.setPropuesta(rs.getString("propuesta"));
		tarea.setResultado_camp(rs.getString("resultado_camp"));
		tarea.setVideo(rs.getString("video"));
		tarea.setImplantacion2(rs.getString("implantacion2"));
		tarea.setImplantacion3(rs.getString("implantacion3"));
		tarea.setProduccion1(rs.getString("produccion1"));
		tarea.setProduccion2(rs.getString("produccion2"));
		tarea.setProduccion3(rs.getString("produccion3"));
		tarea.setEstado(rs.getString("estado"));
		
		return tarea;
	}
}
