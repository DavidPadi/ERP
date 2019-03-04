package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.BriefingDTO;
import com.org.DTO.ConcursoDTO;

@Repository
public class BriefingDAO implements BriefingInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevoBriefing(BriefingDTO briefing) {
		String sql = "insert into briefing_tarea (titulo,equipo,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {briefing.getTitulo(),briefing.getEquipo(),briefing.getFechaentrega(),briefing.getFases(),briefing.getEtiquetas(),briefing.getAdjunto(),briefing.getDescripcion(),briefing.getComentarios(),briefing.getEstado()};
		BriefingMapper mapper = new BriefingMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<BriefingDTO> BuscarPorComentariosBriefing() {
		String sql = "SELECT * FROM briefing_tarea";
		BriefingMapper mapper = new BriefingMapper();
		List<BriefingDTO> concurso = this.jdbcTemplate.query(sql, mapper);
		return concurso;
		}

	
}
