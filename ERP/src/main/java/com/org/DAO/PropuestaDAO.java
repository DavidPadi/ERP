package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.BriefingDTO;
import com.org.DTO.PropuestaDTO;


@Repository
public class PropuestaDAO implements PropuestaInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevaPropuesta(PropuestaDTO propuesta) {
		String sql = "insert into propuesta_tarea (titulo,equipo,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {propuesta.getTitulo(),propuesta.getEquipo(),propuesta.getFechaentrega(),propuesta.getFases(),propuesta.getEtiquetas(),propuesta.getAdjunto(),propuesta.getDescripcion(),propuesta.getComentarios(),propuesta.getEstado()};
		PropuestaMapper mapper = new PropuestaMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<PropuestaDTO> BuscarPorComentariosPropuesta() {
		String sql = "SELECT * FROM propuesta_tarea";
		PropuestaMapper mapper = new PropuestaMapper();
		List<PropuestaDTO> propuesta = this.jdbcTemplate.query(sql, mapper);
		return propuesta;
		}

	
}