package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.BriefingDTO;
import com.org.DTO.ConcursoDTO;
import com.org.DTO.EstudioCostesDTO;
import com.org.DTO.ProduccionDTO;


@Repository
public class ProduccionDAO implements ProduccionInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevaProduccion(ProduccionDTO produccion) {
		String sql = "insert into produccion_tarea (titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {produccion.getTitulo(),produccion.getId_trabajadores(),produccion.getFechaentrega(),produccion.getFases(),produccion.getEtiquetas(),produccion.getAdjunto(),produccion.getDescripcion(),produccion.getComentarios(),produccion.getEstado()};
		ProduccionMapper mapper = new ProduccionMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<ProduccionDTO> BuscarPorComentariosProduccion() {
		String sql = "SELECT * FROM produccion_tarea";
		ProduccionMapper mapper = new ProduccionMapper();
		List<ProduccionDTO> produccion = this.jdbcTemplate.query(sql, mapper);
		return produccion;
		}
	public List<ProduccionDTO> BuscarTareaporIdTrabajadores(int id_trabajadores) {
		String sql = "select * from produccion_tarea where id_trabajadores = ? ORDER BY id DESC LIMIT 1";
		Object[ ] parametros = {id_trabajadores}; 
		ProduccionMapper mapper = new ProduccionMapper();
		List<ProduccionDTO> produccion = this.jdbcTemplate.query(sql, parametros, mapper);
		return produccion;
		}
	public void ActualizarProduccion( String estado,int id_trabajadores) {
		String sql = "update produccion_tarea set estado=? where id_trabajadores=?";
		Object [] parametros= {estado,id_trabajadores};
		this.jdbcTemplate.update(sql, parametros);
	
}
}