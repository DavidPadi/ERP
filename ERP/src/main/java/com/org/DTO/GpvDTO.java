package com.org.DTO;

import java.io.Serializable;

public class GpvDTO implements Serializable{
	private String nombre;
	private int telefono;
	private String email;
	private String zona;
	private int tienda;
	
	
	
	
	
	public GpvDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public GpvDTO(String nombre, int telefono, String email, String zona, int tienda) {
		super();
		this.nombre = nombre;
		this.telefono = telefono;
		this.email = email;
		this.zona = zona;
		this.tienda = tienda;
	}


	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getZona() {
		return zona;
	}
	public void setZona(String zona) {
		this.zona = zona;
	}
	public int getTienda() {
		return tienda;
	}

	public void setTienda(int tienda) {
		this.tienda = tienda;
	}
	
	
}
