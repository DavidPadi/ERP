package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.ContactoDTO;
import com.org.DTO.EquipoDTO;




public class ContactoMapper implements RowMapper<ContactoDTO> {
	  
		public ContactoDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			ContactoDTO contacto = new ContactoDTO(); 
			
			contacto.setTlf_centro(rs.getInt("tlf_centro"));
			contacto.setTlf_patrimonio(rs.getInt("tlf_patrimonio"));
			contacto.setTlf_seguridad(rs.getInt("tlf_seguridad"));
			contacto.setTlf_muelle(rs.getInt("tlf_muelle"));
			
			return contacto;
		}
}

