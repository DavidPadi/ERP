package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.BriefingDTO;

import com.org.DTO.ProduccionDTO;
import com.org.DTO.TareaMontajeDTO;


@Repository
public class TareaMontajeDAO implements TareasMontajesInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevaTareasMontaje(TareaMontajeDTO tareas) {
		String sql = "insert into montaje_tarea (titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {tareas.getTitulo(),tareas.getId_trabajadores(),tareas.getFechaentrega(),tareas.getFases(),tareas.getEtiquetas(),tareas.getAdjunto(),tareas.getDescripcion(),tareas.getComentarios(),tareas.getEstado()};
		TareaMontajeMapper mapper = new TareaMontajeMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<TareaMontajeDTO> BuscarPorComentariosTareasMontaje() {
		String sql = "SELECT * FROM montaje_tarea";
		TareaMontajeMapper mapper = new TareaMontajeMapper();
		List<TareaMontajeDTO> tareas = this.jdbcTemplate.query(sql, mapper);
		return tareas;
		}
}