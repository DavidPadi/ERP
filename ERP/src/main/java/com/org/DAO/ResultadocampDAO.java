package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.BriefingDTO;
import com.org.DTO.EstudioCostesDTO;
import com.org.DTO.ImplantacionDTO;
import com.org.DTO.ResultadocampDTO;


@Repository
public class ResultadocampDAO implements ResultadocampInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevoResultadocamp(ResultadocampDTO resultado) {
		String sql = "insert into resultado_tarea (titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {resultado.getTitulo(),resultado.getId_trabajadores(),resultado.getFechaentrega(),resultado.getFases(),resultado.getEtiquetas(),resultado.getAdjunto(),resultado.getDescripcion(),resultado.getComentarios(),resultado.getEstado()};
		ResultadocampMapper mapper = new ResultadocampMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<ResultadocampDTO> BuscarPorComentariosResultadocamp() {
		String sql = "SELECT * FROM resultado_tarea";
		ResultadocampMapper mapper = new ResultadocampMapper();
		List<ResultadocampDTO> resultado = this.jdbcTemplate.query(sql, mapper);
		return resultado;
		}


}