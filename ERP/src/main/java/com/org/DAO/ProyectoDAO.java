package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.CentroDTO;
import com.org.DTO.ProyectoDTO;



@Repository
public class ProyectoDAO implements ProyectoInterface {
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}


	public List<ProyectoDTO> ListarProyectos() {
		String sql = "SELECT * from proyectos"; 
		ProyectoMapper mapper = new ProyectoMapper();
		List<ProyectoDTO> proyectos = this.jdbcTemplate.query(sql, mapper);
		return proyectos;
		
	}


	public void NuevoProyecto(ProyectoDTO proyecto) {
		String sql = "insert into proyectos (nombre,departamentos,tipo_proyecto,descripcion) values (?,?,?,?)";
		Object[ ] parametros= {proyecto.getNombre(),proyecto.getDepartamentos(),proyecto.getTipo_proyecto(),proyecto.getDescripcion()};
		this.jdbcTemplate.update(sql,parametros);
		
	}


	public List<ProyectoDTO> BuscarPorNombre() {
		
		return null;
	}


	public void BorrarProyecto(int id) {
		
		
	}
	
}
