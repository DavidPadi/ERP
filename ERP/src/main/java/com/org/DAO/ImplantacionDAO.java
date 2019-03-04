package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.BriefingDTO;
import com.org.DTO.ConcursoDTO;
import com.org.DTO.EstudioCostesDTO;
import com.org.DTO.ImplantacionDTO;


@Repository
public class ImplantacionDAO implements ImplantacionInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevaImplantacion(ImplantacionDTO implantacion) {
		String sql = "insert into implantacion_tarea (titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {implantacion.getTitulo(),implantacion.getId_trabajadores(),implantacion.getFechaentrega(),implantacion.getFases(),implantacion.getEtiquetas(),implantacion.getAdjunto(),implantacion.getDescripcion(),implantacion.getComentarios(),implantacion.getEstado()};
		ImplantacionMapper mapper = new ImplantacionMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<ImplantacionDTO> BuscarPorComentariosImplantacion() {
		String sql = "SELECT * FROM implantacion_tarea";
		ImplantacionMapper mapper = new ImplantacionMapper();
		List<ImplantacionDTO> implantacion = this.jdbcTemplate.query(sql, mapper);
		return implantacion;
		}
	public List<ImplantacionDTO> BuscarTareaporIdTrabajadores(int id_trabajadores) {
		String sql = "select * from implantacion_tarea where id_trabajadores = ?  ORDER BY id DESC LIMIT 1";
		Object[ ] parametros = {id_trabajadores}; 
		ImplantacionMapper mapper = new ImplantacionMapper();
		List<ImplantacionDTO> implantacion = this.jdbcTemplate.query(sql, parametros, mapper);
		return implantacion;
		}
	public void ActualizarImplantacion( String estado,int id_trabajadores) {
		
		String sql = "update implantacion_tarea set estado=? where id_trabajadores=?";
		Object [] parametros= {estado,id_trabajadores};
		this.jdbcTemplate.update(sql, parametros);
	
}
}