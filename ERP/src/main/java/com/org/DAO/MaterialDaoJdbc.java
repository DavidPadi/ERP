package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.MaterialDTO;
import com.org.DTO.TiendaDTO;
@Repository
public class MaterialDaoJdbc implements MaterialDaoInterface {
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}

	
		public void CrearMaterial(MaterialDTO material) {
			String sql = "insert into material (nombre, cantidad) values (?,?)";
			Object[ ] parametros= {material.getNombre(), material.getCantidad()};
			this.jdbcTemplate.update(sql,parametros);
			
		}
		
		public List<MaterialDTO> ListarMateriales(){
			String sql = "select * from material"; 
			MaterialMapper mapper = new MaterialMapper();
			List<MaterialDTO> material = this.jdbcTemplate.query(sql, mapper);
			return material;
		}
	
		public void BorrarMaterial(int id) {
			String sql = "delete from material where nombre = ?";
			Object[ ] parametros = {id}; 
			this.jdbcTemplate.update(sql, parametros);
		}
		
		public void EditarMaterial(MaterialDTO material) {
			String sql = "update material set (nombre, cantidad) where id values (?,?)";
			Object [] parametros= {material.getNombre(),material.getCantidad()};
			MaterialMapper mapper = new MaterialMapper();
			this.jdbcTemplate.update(sql, parametros, mapper);
		}
		
		public List<MaterialDTO> Buscar_material(String nombre){
			//String filtro=""+tienda+"_%";
			//String sql= "select * from tienda where nombre LIKE"+'"'+filtro+'"';
			String sql= "select * from material where nombre=?";
			Object [] parametros= {nombre};
			MaterialMapper mapper = new MaterialMapper();
			List<MaterialDTO> material=this.jdbcTemplate.query(sql, parametros,mapper);
			return material;
		}

}
