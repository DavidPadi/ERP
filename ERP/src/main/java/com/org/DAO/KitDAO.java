package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.BriefingDTO;

import com.org.DTO.ImplantacionDTO;
import com.org.DTO.KitDTO;


@Repository
public class KitDAO implements KitInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevoKit(KitDTO kit) {
		String sql = "insert into kit_tarea (titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {kit.getTitulo(),kit.getId_trabajadores(),kit.getFechaentrega(),kit.getFases(),kit.getEtiquetas(),kit.getAdjunto(),kit.getDescripcion(),kit.getComentarios(),kit.getEstado()};
		KitMapper mapper = new KitMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<KitDTO> BuscarPorComentariosKit() {
		String sql = "SELECT * FROM kit_tarea";
		KitMapper mapper = new KitMapper();
		List<KitDTO> kit = this.jdbcTemplate.query(sql, mapper);
		return kit;
		}
}