package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.CentroDTO;
import com.org.DTO.ConcursoDTO;
import com.org.DTO.GpvDTO;
import com.org.DTO.UsuarioDTO;

@Repository
public class ConcursoDAO implements ConcursoInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevoConcurso(ConcursoDTO concurso) {
		String sql = "insert into concurso_tarea (titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {concurso.getTitulo(),concurso.getId_trabajadores(),concurso.getFechaentrega(),concurso.getFases(),concurso.getEtiquetas(),concurso.getAdjunto(),concurso.getDescripcion(),concurso.getComentarios(),concurso.getEstado()};
		ConcursoMapper mapper = new ConcursoMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<ConcursoDTO> BuscarPorComentarios() {
		String sql = "SELECT * FROM concurso_tarea";
		ConcursoMapper mapper = new ConcursoMapper();
		List<ConcursoDTO> concurso = this.jdbcTemplate.query(sql, mapper);
		return concurso;
		}
	public List<ConcursoDTO> BuscarTareaporIdTrabajadores(int id_trabajadores) {
		String sql = "select * from concurso_tarea where id_trabajadores = ?  ORDER BY id DESC LIMIT 1";
		Object[ ] parametros = {id_trabajadores}; 
		ConcursoMapper mapper = new ConcursoMapper();
		List<ConcursoDTO> concurso = this.jdbcTemplate.query(sql, parametros, mapper);
		return concurso;
		}
	public void Actualizar( String estado,int id_trabajadores) {
		
			String sql = "update concurso_tarea set estado=? where id_trabajadores=?";
			Object [] parametros= {estado,id_trabajadores};
			this.jdbcTemplate.update(sql, parametros);
		
	}
}
