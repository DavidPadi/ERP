package com.org.DTO;

import java.io.Serializable;

public class MaterialDTO implements Serializable{
	private String nombre;
	private Integer cantidad;
	
	
	
	public MaterialDTO() {
		super();
		// TODO Auto-generated constructor stub
	}



	public MaterialDTO(String nombre, Integer cantidad) {
		super();
		this.nombre = nombre;
		this.cantidad = cantidad;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public Integer getCantidad() {
		return cantidad;
	}



	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}
	
	
}
