package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.ClienteDTO;

@Repository
public class ClienteDAO implements ClienteInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public List<ClienteDTO> Leerclientes() {
		String sql = "SELECT * FROM cliente";
		ClienteMapper mapper = new ClienteMapper();
		List<ClienteDTO> cliente = this.jdbcTemplate.query(sql, mapper);
		return cliente;
		}

}