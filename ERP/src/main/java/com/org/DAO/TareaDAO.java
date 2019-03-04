package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.ConcursoDTO;
import com.org.DTO.MontajeDTO;
import com.org.DTO.TareaDTO;
import com.org.DTO.TareaMontajeDTO;


@Repository
public class TareaDAO implements TareaInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}

	
	public void ActualizarConcurso(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set concurso=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarBriefing(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set briefing=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarPropuesta(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set propuesta=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarEstudioCostes(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set estudio_costes=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarProduccion(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set produccion=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarImplantacion(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set implantacion=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarMontajes(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set montajes=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarPostventa(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set postventa=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarResultadocampaña(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set resultado_camp=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarVideo(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set video=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarProduccion1(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set produccion1=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarProduccion2(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set produccion2=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarProduccion3(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set produccion3=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarImplantacion2(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set implantacion2=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarImplantacion3(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set implantacion3=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public void ActualizarKit(TareaDTO tarea,String estado, Integer id) {
		  String sql = "update tareas set kit=?,estado=? where id = ?";
	      this.jdbcTemplate.update(sql,tarea.getConcurso(),tarea.getEstado(),id);
	}
	public List<ConcursoDTO> BuscarPorFechaentrega() {
		String sql = "SELECT * FROM concurso_tarea";
		ConcursoMapper mapper = new ConcursoMapper();
		List<ConcursoDTO> concursos = this.jdbcTemplate.query(sql, mapper);
		return concursos;
		}
	public List<TareaDTO> ListarTareas() {
		String sql = "SELECT * from tareas"; 
		TareaMapper mapper = new TareaMapper();
		List<TareaDTO> tareas = this.jdbcTemplate.query(sql, mapper);
		return tareas;
	}
}