package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.BriefingDTO;
import com.org.DTO.EstudioCostesDTO;


@Repository
public class EstudioCostesDAO implements EstudioCostesInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevoEstudiocostes(EstudioCostesDTO estudios) {
		String sql = "insert into estudiocostes_tarea (titulo,equipo,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {estudios.getTitulo(),estudios.getEquipo(),estudios.getFechaentrega(),estudios.getFases(),estudios.getEtiquetas(),estudios.getAdjunto(),estudios.getDescripcion(),estudios.getComentarios(),estudios.getEstado()};
		EstudiosCostesMapper mapper = new EstudiosCostesMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<EstudioCostesDTO> BuscarPorComentariosEstudiosCostes() {
		String sql = "SELECT * FROM estudiocostes_tarea";
		EstudiosCostesMapper mapper = new EstudiosCostesMapper();
		List<EstudioCostesDTO> estudios = this.jdbcTemplate.query(sql, mapper);
		return estudios;
		}
}
