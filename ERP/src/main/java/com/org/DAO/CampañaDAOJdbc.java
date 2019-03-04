package com.org.DAO;
import com.org.DTO.*;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CampañaDAOJdbc implements CampañaDaoInterface {
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevaCampaña(CampañaDTO campaña) {
		//String sql = "insert into campanha (id_campanha, estado_general, Marca, Nombre, Cantidad_tiendas, Localizacion, Briefing, Comentarios, Interlocutor, fecha_inicio, fecha_fin) values (?,?,?,?,?,?,?,?,?,?,?)";
		//Object[ ] parametros= {campaña.getId_campaña(), campaña.getEstado(), campaña.getMarca(), campaña.getNombre(), campaña.getCantidad_tiendas(), campaña.getLocalizacion(), campaña.getBriefing(), campaña.getComentarios(), campaña.getInterlocutor(), campaña.getFecha_in(), campaña.getFecha_fin()};
		String sql = "insert into campanha (id_campanha, estado, marca, nombre, cantidad_tiendas, localizacion, comentarios, interlocutor, fecha_inicio, fecha_fin, id_cliente, ruta) values (?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {campaña.getId_campanha(), campaña.getEstado(), campaña.getMarca(), campaña.getNombre(), campaña.getCantidad_tiendas(), campaña.getLocalizacion(),  campaña.getComentarios(), campaña.getInterlocutor(), campaña.getFecha_inicio(), campaña.getFecha_fin(), campaña.getCliente(),campaña.getRuta()};
		CampañaMapper mapper = new CampañaMapper();
		this.jdbcTemplate.update(sql,parametros);
		
	}
	
	public List<ClienteDTO> Listar_Cliente_foreign(){
			String sql = "select * from cliente";
			ClienteMapper mapper = new ClienteMapper();
			List<ClienteDTO> clientes = this.jdbcTemplate.query(sql, mapper);
			if(clientes.isEmpty()) return null;
			else return clientes; 
			}
	public void EditarCampaña(CampañaDTO campaña) {
		String sql = "update campanha set estado=?, marca=?, nombre=?, cantidad_tiendas=?, localizacion=?, comentarios=?, interlocutor=?,fecha_inicio=?, fecha_fin=?,ruta=? where id_campanha=?";
		Object [] parametros= {campaña.getEstado(), campaña.getMarca(), campaña.getNombre(), campaña.getCantidad_tiendas(), campaña.getLocalizacion(), campaña.getComentarios(), campaña.getInterlocutor(),campaña.getFecha_inicio(),campaña.getFecha_fin(),campaña.getRuta(),campaña.getId_campanha()};
		this.jdbcTemplate.update(sql, parametros);
	}
	public CampañaDTO BuscarPorCodigo(String id_campaña) {
		String sql = "select * from campanha where id_campanha = ?";
		Object[ ] parametros = {id_campaña}; 
		CampañaMapper mapper = new CampañaMapper();
		List<CampañaDTO> campaña = this.jdbcTemplate.query(sql, parametros, mapper);
		if(campaña.isEmpty()) return null;
		else return campaña.get(0); 
		}	
	public List<CampañaDTO> ListarCampañas(){
		String sql = "SELECT * from campanha"; 
		CampañaMapper mapper = new CampañaMapper();
		List<CampañaDTO> campañas = this.jdbcTemplate.query(sql, mapper);
		return campañas;
	}
}

