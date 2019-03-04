package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import com.org.DTO.ImplantacionDTO;
import com.org.DTO.PostventaDTO;


@Repository
public class PostventaDAO implements PostventaInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevaPostventa(PostventaDTO postventa) {
		String sql = "insert into postventa_tarea (titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {postventa.getTitulo(),postventa.getId_trabajadores(),postventa.getFechaentrega(),postventa.getFases(),postventa.getEtiquetas(),postventa.getAdjunto(),postventa.getDescripcion(),postventa.getComentarios(),postventa.getEstado()};
		PostventaMapper mapper = new PostventaMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<PostventaDTO> BuscarPorComentariosPostventa() {
		String sql = "SELECT * FROM postventa_tarea";
		PostventaMapper mapper = new PostventaMapper();
		List<PostventaDTO> implantacion = this.jdbcTemplate.query(sql, mapper);
		return implantacion;
		}
	public List<PostventaDTO> BuscarTareaporIdTrabajadores(int id_trabajadores) {
		String sql = "select * from postventa_tarea where id_trabajadores = ?  ORDER BY id DESC LIMIT 1";
		Object[ ] parametros = {id_trabajadores}; 
		PostventaMapper mapper = new PostventaMapper();
		List<PostventaDTO> postventa = this.jdbcTemplate.query(sql, parametros, mapper);
		return postventa;
		}
	public void ActualizarPostventa( String estado,int id_trabajadores) {
		
		String sql = "update postventa_tarea set estado=? where id_trabajadores=?";
		Object [] parametros= {estado,id_trabajadores};
		this.jdbcTemplate.update(sql, parametros);
	
}
}