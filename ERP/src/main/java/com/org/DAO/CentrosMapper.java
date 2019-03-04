package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.CentroDTO;


	public class CentrosMapper implements RowMapper<CentroDTO> {
		public CentroDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			CentroDTO centros = new CentroDTO(); 
			
			
			//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
			centros.setId_centro(rs.getInt("id_centro"));
			centros.setProvincia(rs.getString("provincia"));
			centros.setCadena(rs.getString("cadena"));
			centros.setLocalidad(rs.getString("localidad"));
			centros.setCentros(rs.getString("centros"));
			centros.setCp(rs.getInt("cp"));
			centros.setDireccion(rs.getString("direccion"));
			centros.setPlataforma(rs.getString("plataforma"));
			centros.setEnviar_doc(rs.getString("enviar_doc"));
			centros.setHorario_personal_externo(rs.getString("horario_personal_externo"));
			centros.setHorario_muelle(rs.getString("horario_muelle"));
			centros.setTelefonocentro(rs.getInt("telefonocentro"));
			centros.setPatrimonio(rs.getInt("patrimonio"));
			centros.setSeguridad(rs.getInt("seguridad"));
			centros.setMuelle(rs.getInt("muelle"));
			centros.setPersona_contacto(rs.getString("persona_contacto"));
			centros.setResponsable(rs.getString("responsable"));
			centros.setTelefono(rs.getInt("telefono"));
			centros.setFax(rs.getString("fax"));
			centros.setCaja_central(rs.getString("caja_central"));
			centros.setPersonal_seguridad(rs.getString("personal_seguridad"));
			centros.setEmail(rs.getString("email"));
			centros.setServicio(rs.getString("servicio"));
			centros.setRrhh(rs.getString("rrhh"));
			centros.setOficina(rs.getString("oficina"));
			centros.setPerfumeria(rs.getString("perfumeria"));
			centros.setLiquidos(rs.getString("liquidos"));
			centros.setAlimentacion(rs.getString("alimentacion"));
			
			
			 
			return centros;
		}
	}

