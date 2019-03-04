package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.GpvDTO;
import com.org.DTO.TiendaDTO;


@Repository
public class GPVDAOJdbc implements GPV_Interface {
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void CrearGPV(GpvDTO gpv) {
		String sql = "insert into gpv (id_tienda, nombre, telefono, email, zona) values (?,?,?,?,?)";
		Object[ ] parametros= {gpv.getTienda(),gpv.getNombre(),gpv.getTelefono(),gpv.getEmail(),gpv.getZona()};
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<GpvDTO> ListarGpv(){
		String sql = "select * from gpv"; 
		GPVMapper mapper = new GPVMapper();
		List<GpvDTO> gpv = this.jdbcTemplate.query(sql, mapper);
		return gpv;
	}
	public void EditarGpv(GpvDTO gpvactualizado) {
		String sql = "update gpv set nombre=?, telefono=?, email=?, zona=?";
		Object [] parametros= {gpvactualizado.getNombre(),gpvactualizado.getTelefono(),gpvactualizado.getEmail(),gpvactualizado.getZona()};
		this.jdbcTemplate.update(sql, parametros);
	}
	
}
