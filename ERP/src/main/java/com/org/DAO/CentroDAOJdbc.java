package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.CampañaDTO;
import com.org.DTO.CentroDTO;


@Repository
public class CentroDAOJdbc implements CentroDAOInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}

	
	public List<CentroDTO> ListarCentros() {
		String sql = "SELECT * from centros"; 
		CentrosMapper mapper = new CentrosMapper();
		List<CentroDTO> centros = this.jdbcTemplate.query(sql, mapper);
		return centros;
	}

	public void Actualizar(CentroDTO centro, Integer id_centro) {
	  String sql = "update centros set provincia= ?, cadena= ?,  localidad= ?,   cp= ?, direccion= ?, plataforma= ?, enviar_doc= ?, horario_personal_externo= ?, horario_muelle= ?, telefonocentro= ?, patrimonio= ?, seguridad= ?, muelle= ?, persona_contacto= ?, responsable= ?, telefono= ?, fax= ?, caja_central= ?, personal_seguridad= ?, email= ?, servicio= ?, rrhh= ?, oficina= ?, perfumeria= ?, liquidos= ?, alimentacion= ? where id_centro = ?";
      this.jdbcTemplate.update(sql,centro.getProvincia(),centro.getCadena(),centro.getLocalidad(),centro.getCp(),centro.getDireccion(),centro.getPlataforma(),centro.getEnviar_doc(),centro.getHorario_personal_externo(),centro.getHorario_muelle(),centro.getTelefonocentro(),centro.getPatrimonio(),centro.getSeguridad(),centro.getMuelle(),centro.getPersona_contacto(),centro.getResponsable(),centro.getTelefono(),centro.getFax(),centro.getCaja_central(),centro.getPersonal_seguridad(),centro.getEmail(),centro.getServicio(),centro.getRrhh(),centro.getOficina(),centro.getPerfumeria(),centro.getLiquidos(),centro.getAlimentacion(), id_centro);
}
	public void NuevoCentro(CentroDTO nuevoequipo) {
		String sql = "insert into centros (provincia,cadena,localidad,centros,cp,direccion,plataforma,enviar_doc,horario_personal_externo, horario_muelle,telefonocentro, patrimonio, seguridad, muelle, persona_contacto, responsable, telefono, fax, caja_central, personal_seguridad, email, servicio, rrhh, oficina, perfumeria, liquidos, alimentacion) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {nuevoequipo.getProvincia(),nuevoequipo.getCadena(),nuevoequipo.getLocalidad(),nuevoequipo.getCentros(),nuevoequipo.getCp(),nuevoequipo.getDireccion(),nuevoequipo.getPlataforma(),nuevoequipo.getEnviar_doc(),nuevoequipo.getHorario_personal_externo(),nuevoequipo.getHorario_muelle(),nuevoequipo.getTelefonocentro(),nuevoequipo.getPatrimonio(),nuevoequipo.getSeguridad(),nuevoequipo.getMuelle(),nuevoequipo.getPersona_contacto(),nuevoequipo.getResponsable(),nuevoequipo.getTelefono(),nuevoequipo.getFax(),nuevoequipo.getCaja_central(),nuevoequipo.getPersonal_seguridad(),nuevoequipo.getEmail(),nuevoequipo.getServicio(),nuevoequipo.getRrhh(),nuevoequipo.getOficina(),nuevoequipo.getPerfumeria(),nuevoequipo.getLiquidos(),nuevoequipo.getAlimentacion()};
		CentrosMapper mapper = new CentrosMapper();
		this.jdbcTemplate.update(sql,parametros);
		
	}
	    
}
