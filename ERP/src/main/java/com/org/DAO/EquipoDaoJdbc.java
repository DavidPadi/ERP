package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.CampañaDTO;
import com.org.DTO.EquipoDTO;

@Repository
public class EquipoDaoJdbc implements EquipoDaoInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}

	
	public void CrearEquipo(EquipoDTO equipo) {
		String sql="INSERT into equipos (titulo, descripcion, fecha_in, fecha_fin) values (?,?,?,?)";
		Object[ ] parametros= {equipo.getTitulo() , equipo.getDescripcion(),  equipo.getFecha_in(), equipo.getFecha_fin()};
		this.jdbcTemplate.update(sql,parametros);
	}

	public EquipoDTO ListarId() {
		String sql = "SELECT * FROM equipos";
		EquipoMapper mapper = new EquipoMapper();
		List<EquipoDTO> aux = this.jdbcTemplate.query(sql, mapper);
		return aux.get(aux.size()-1);
	}
	
	
	public void CrearEquipo_Trabajadores(int id, int id_trabajadores) {
		String sql = "Insert into trabajadores_equipo (id, id_trabajadores) values (?,?)";
		Object [] parametros = {id, id_trabajadores};
		this.jdbcTemplate.update(sql, parametros);
	}
	public void CrearEquipo_Campañas(int id,String id_campanha) {
		String sql = "Insert into campanha_equipo (id, id_campanha) values (?,?)";
		Object [] parametros = {id, id_campanha};
		this.jdbcTemplate.update(sql, parametros);
	}
	public void CrearEquipo_Centros(int clave,int id_centro) {
		String sql = "Insert into centros_equipo (clave, id_centro) values (?,?)";
		Object [] parametros = {clave, id_centro};
		this.jdbcTemplate.update(sql, parametros);
	}
	public List<EquipoDTO> ListarEquipos() {
		String sql="SELECT * FROM equipos";
		EquipoMapper mapper = new EquipoMapper();
		List<EquipoDTO> aux =  this.jdbcTemplate.query(sql, mapper);
		return aux;
		
		
	}

	public EquipoDTO BuscaPorTitulo(String title) {
		String sql = "select * from equipos where title = ?";
		Object[ ] parametros = {title}; 
		EquipoMapper mapper = new EquipoMapper();
		List<EquipoDTO> equipo = this.jdbcTemplate.query(sql, parametros, mapper);
		if(equipo.isEmpty()) return null;
		else return equipo.get(0); 
			
	}
	public void BorrarPorID(int id_trabajadores) {
		String sql="DELETE from trabajadores_equipo WHERE id_trabajadores=?";
		Object[] parametros = {id_trabajadores};
		this.jdbcTemplate.update(sql,parametros);
	}
	public void BorrarEquipo(int id) {
		String sql="DELETE from equipos WHERE id=?";
		Object[] parametros = {id};
		this.jdbcTemplate.update(sql,parametros);
	}
	
	public void EditarEquipo(EquipoDTO equipo, int id) {
		
		String sql = "update equipos set equipo=? where id = ?";
	      this.jdbcTemplate.update(sql,equipo.getTitulo(),id);
	}


	

}
