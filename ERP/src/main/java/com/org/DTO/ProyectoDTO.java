package com.org.DTO;

import java.io.Serializable;

public class ProyectoDTO implements Serializable{
	private String nombre;
	private String departamentos;
	private String tipo_proyecto;
	private String descripcion;
	
	
	public ProyectoDTO(String nombre, String departamentos, String tipo_proyecto, String descripcion) {
		super();
		this.nombre = nombre;
		this.departamentos = departamentos;
		this.tipo_proyecto = tipo_proyecto;
		this.descripcion = descripcion;
	}
	public ProyectoDTO() {
		super();
	}
	
	
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDepartamentos() {
		return departamentos;
	}
	public void setDepartamentos(String departamentos) {
		this.departamentos = departamentos;
	}
	public String getTipo_proyecto() {
		return tipo_proyecto;
	}
	public void setTipo_proyecto(String tipo_proyecto) {
		this.tipo_proyecto = tipo_proyecto;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
	
	
}
