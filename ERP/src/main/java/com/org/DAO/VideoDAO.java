package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import com.org.DTO.VideoDTO;


@Repository
public class VideoDAO implements VideoInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevoVideo(VideoDTO video) {
		String sql = "insert into video_tarea (titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado) values (?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {video.getTitulo(),video.getId_trabajadores(),video.getFechaentrega(),video.getFases(),video.getEtiquetas(),video.getAdjunto(),video.getDescripcion(),video.getComentarios(),video.getEstado()};
		VideoMapper mapper = new VideoMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<VideoDTO> BuscarPorComentariosVideo() {
		String sql = "SELECT * FROM video_tarea";
		VideoMapper mapper = new VideoMapper();
		List<VideoDTO> video = this.jdbcTemplate.query(sql, mapper);
		return video;
		}
}