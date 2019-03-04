package com.org.DTO;

import java.io.Serializable;

public class CentroDTO implements Serializable{
	private int id_centro;
	private String provincia;
	private String cadena;
	private String localidad;
	private String centros;
	private int cp;
	private String direccion;
	private String plataforma;
	private String enviar_doc;
	private String horario_personal_externo;
	private String horario_muelle;
	private int telefonocentro;
	private int patrimonio;
	private int seguridad;
	private int muelle;
	private String persona_contacto;
	private String responsable;
	private int telefono;
	private String fax;
	private String caja_central;
	private String personal_seguridad;
	private String email;
	private String servicio;
	private String rrhh;
	private String oficina;
	private String perfumeria;
	private String liquidos;
	private String alimentacion;
	
	public CentroDTO() {
		super();
	}

	
	public CentroDTO(String provincia, String cadena, String localidad, String centros, int cp, String direccion,
			String plataforma, String enviar_doc, String horario_personal_externo, String horario_muelle,
			int telefonocentro, int patrimonio, int seguridad, int muelle, String persona_contacto, String responsable,
			int telefono, String fax, String caja_central, String personal_seguridad, String email, String servicio,
			String rrhh, String oficina, String perfumeria, String liquidos, String alimentacion) {
		super();
		this.provincia = provincia;
		this.cadena = cadena;
		this.localidad = localidad;
		this.centros = centros;
		this.cp = cp;
		this.direccion = direccion;
		this.plataforma = plataforma;
		this.enviar_doc = enviar_doc;
		this.horario_personal_externo = horario_personal_externo;
		this.horario_muelle = horario_muelle;
		this.telefonocentro = telefonocentro;
		this.patrimonio = patrimonio;
		this.seguridad = seguridad;
		this.muelle = muelle;
		this.persona_contacto = persona_contacto;
		this.responsable = responsable;
		this.telefono = telefono;
		this.fax = fax;
		this.caja_central = caja_central;
		this.personal_seguridad = personal_seguridad;
		this.email = email;
		this.servicio = servicio;
		this.rrhh = rrhh;
		this.oficina = oficina;
		this.perfumeria = perfumeria;
		this.liquidos = liquidos;
		this.alimentacion = alimentacion;
	}
	
	

	

	
	
	

	public CentroDTO(String provincia, String cadena, String localidad, int cp, String direccion, String plataforma,
			String enviar_doc, String horario_personal_externo, String horario_muelle, int telefonocentro,
			int patrimonio, int seguridad, int muelle, String persona_contacto, String responsable, int telefono,
			String fax, String caja_central, String personal_seguridad, String email, String servicio, String rrhh,
			String oficina, String perfumeria, String liquidos, String alimentacion) {
		super();
		this.provincia = provincia;
		this.cadena = cadena;
		this.localidad = localidad;
		this.cp = cp;
		this.direccion = direccion;
		this.plataforma = plataforma;
		this.enviar_doc = enviar_doc;
		this.horario_personal_externo = horario_personal_externo;
		this.horario_muelle = horario_muelle;
		this.telefonocentro = telefonocentro;
		this.patrimonio = patrimonio;
		this.seguridad = seguridad;
		this.muelle = muelle;
		this.persona_contacto = persona_contacto;
		this.responsable = responsable;
		this.telefono = telefono;
		this.fax = fax;
		this.caja_central = caja_central;
		this.personal_seguridad = personal_seguridad;
		this.email = email;
		this.servicio = servicio;
		this.rrhh = rrhh;
		this.oficina = oficina;
		this.perfumeria = perfumeria;
		this.liquidos = liquidos;
		this.alimentacion = alimentacion;
	}


	public int getId_centro() {
		return id_centro;
	}

	public void setId_centro(int id_centro) {
		this.id_centro = id_centro;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getCadena() {
		return cadena;
	}

	public void setCadena(String cadena) {
		this.cadena = cadena;
	}

	public String getLocalidad() {
		return localidad;
	}




	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}

	

	public String getCentros() {
		return centros;
	}


	public void setCentros(String centros) {
		this.centros = centros;
	}


	public int getCp() {
		return cp;
	}

	public void setCp(int cp) {
		this.cp = cp;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getPlataforma() {
		return plataforma;
	}

	public void setPlataforma(String plataforma) {
		this.plataforma = plataforma;
	}

	public String getEnviar_doc() {
		return enviar_doc;
	}

	public void setEnviar_doc(String enviar_doc) {
		this.enviar_doc = enviar_doc;
	}

	public String getHorario_personal_externo() {
		return horario_personal_externo;
	}

	public void setHorario_personal_externo(String horario_personal_externo) {
		this.horario_personal_externo = horario_personal_externo;
	}

	public String getHorario_muelle() {
		return horario_muelle;
	}

	public void setHorario_muelle(String horario_muelle) {
		this.horario_muelle = horario_muelle;
	}

	public int getTelefonocentro() {
		return telefonocentro;
	}

	public void setTelefonocentro(int telefonocentro) {
		this.telefonocentro = telefonocentro;
	}

	public int getPatrimonio() {
		return patrimonio;
	}

	public void setPatrimonio(int patrimonio) {
		this.patrimonio = patrimonio;
	}

	public int getSeguridad() {
		return seguridad;
	}

	public void setSeguridad(int seguridad) {
		this.seguridad = seguridad;
	}

	public int getMuelle() {
		return muelle;
	}

	public void setMuelle(int muelle) {
		this.muelle = muelle;
	}

	public String getPersona_contacto() {
		return persona_contacto;
	}

	public void setPersona_contacto(String persona_contacto) {
		this.persona_contacto = persona_contacto;
	}

	public String getResponsable() {
		return responsable;
	}

	public void setResponsable(String responsable) {
		this.responsable = responsable;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getCaja_central() {
		return caja_central;
	}

	public void setCaja_central(String caja_central) {
		this.caja_central = caja_central;
	}

	public String getPersonal_seguridad() {
		return personal_seguridad;
	}

	public void setPersonal_seguridad(String personal_seguridad) {
		this.personal_seguridad = personal_seguridad;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getServicio() {
		return servicio;
	}

	public void setServicio(String servicio) {
		this.servicio = servicio;
	}

	public String getRrhh() {
		return rrhh;
	}

	public void setRrhh(String rrhh) {
		this.rrhh = rrhh;
	}

	public String getOficina() {
		return oficina;
	}

	public void setOficina(String oficina) {
		this.oficina = oficina;
	}

	public String getPerfumeria() {
		return perfumeria;
	}

	public void setPerfumeria(String perfumeria) {
		this.perfumeria = perfumeria;
	}

	public String getLiquidos() {
		return liquidos;
	}

	public void setLiquidos(String liquidos) {
		this.liquidos = liquidos;
	}

	public String getAlimentacion() {
		return alimentacion;
	}

	public void setAlimentacion(String alimentacion) {
		this.alimentacion = alimentacion;
	}
	

}
