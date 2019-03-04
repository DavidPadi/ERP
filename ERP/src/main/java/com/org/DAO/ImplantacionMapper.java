package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.ImplantacionDTO;




	public class ImplantacionMapper implements RowMapper<ImplantacionDTO> {
		public ImplantacionDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			ImplantacionDTO implantacion = new ImplantacionDTO(); 
			
			implantacion.setTitulo(rs.getString("titulo"));
			implantacion.setEtiquetas(rs.getString("etiquetas"));
			implantacion.setDescripcion(rs.getString("descripcion"));
			implantacion.setComentarios(rs.getString("comentarios"));
			implantacion.setFases(rs.getString("fases"));
			implantacion.setFechaentrega(rs.getString("fechaentrega"));
			implantacion.setId_trabajadores(rs.getInt("id_trabajadores"));
			implantacion.setEstado(rs.getString("estado"));
			
			return implantacion;
		}
	}

