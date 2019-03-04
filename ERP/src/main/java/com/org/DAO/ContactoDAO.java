package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.CampañaDTO;
import com.org.DTO.ConcursoDTO;
import com.org.DTO.ContactoDTO;
import com.org.DTO.EquipoDTO;

@Repository
public class ContactoDAO implements ContactoDAOInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}

	
	public void NuevoContacto(ContactoDTO contacto) {
		String sql = "insert into telefono (tlf_centro,tlf_patrimonio,tlf_seguridad,tlf_muelle) values (?,?,?,?)";
		Object[ ] parametros= {contacto.getTlf_centro(),contacto.getTlf_patrimonio(),contacto.getTlf_seguridad(),contacto.getTlf_muelle()};
		ContactoMapper mapper = new ContactoMapper();
		this.jdbcTemplate.update(sql,parametros);
	}
	public List<ContactoDTO> ListarContactos() {
		String sql="SELECT * FROM telefono";
		ContactoMapper mapper = new ContactoMapper();
		List<ContactoDTO> contacto =  this.jdbcTemplate.query(sql, mapper);
		return contacto;
		
		
	}

	

}
