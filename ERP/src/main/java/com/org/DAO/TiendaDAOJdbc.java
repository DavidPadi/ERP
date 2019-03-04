package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.TiendaDTO;
import com.org.DTO.UsuarioDTO;

@Repository
public class TiendaDAOJdbc implements Tienda_Interface {
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}

	
		public void CrearTienda(TiendaDTO tienda) {
			String sql = "insert into tienda (id_tienda, cadena, direccion, localidad, nombre, estado, tiendatipo, tipologia) values (?,?,?,?,?,?,?,?)";
			Object[ ] parametros= {tienda.getId_tienda(), tienda.getCadena(), tienda.getDireccion(), tienda.getLocalidad(),tienda.getNombre(),tienda.getEstado(),tienda.getTiendatipo() , tienda.getTipologia()};
			this.jdbcTemplate.update(sql,parametros);
			
		}
		
		public List<TiendaDTO> ListarTiendas(){
			String sql = "select * from tienda"; 
			TiendaMapper mapper = new TiendaMapper();
			List<TiendaDTO> tiendas = this.jdbcTemplate.query(sql, mapper);
			return tiendas;
		}
	
		public void BorrarTienda(int id) {
			String sql = "delete from tienda where id_tienda = ?";
			Object[ ] parametros = {id}; 
			this.jdbcTemplate.update(sql, parametros);
		}
		
		public void EditarTienda(TiendaDTO tiendaactualizada) {
			String sql = "update tienda set cadena=?, direccion=?, localidad=?, nombre=?, estado=?, tiendatipo=?, tipologia=? where id_tienda=?";
			Object [] parametros= {tiendaactualizada.getCadena(),tiendaactualizada.getDireccion(),tiendaactualizada.getLocalidad(),tiendaactualizada.getNombre(),tiendaactualizada.getEstado(),tiendaactualizada.getTiendatipo(),tiendaactualizada.getTipologia(),tiendaactualizada.getId_tienda()};
			this.jdbcTemplate.update(sql, parametros);
		}
		
		public List<TiendaDTO> Buscar_realtime(String nombre){
			//String filtro=""+tienda+"_%";
			//String sql= "select * from tienda where nombre LIKE"+'"'+filtro+'"';
			String sql= "select * from tienda where nombre=?";
			Object [] parametros= {nombre};
			TiendaMapper mapper = new TiendaMapper();
			List<TiendaDTO> tiendas=this.jdbcTemplate.query(sql, parametros,mapper);
			return tiendas;
		}

}
