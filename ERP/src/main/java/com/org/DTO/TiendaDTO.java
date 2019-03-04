package com.org.DTO;

import java.util.ArrayList;

public class TiendaDTO {
	private String tipologia;
	private String tiendatipo;
	private int id_tienda;
	private String cadena;
	private String direccion;
	private String localidad;
	private String nombre;
	private String estado;
	
	
	public TiendaDTO(int id_tienda,String cadena, String direccion, String localidad,String nombre, String estado, String tipologia,String tiendatipo) {
		this.id_tienda=id_tienda;
		this.cadena=cadena;
		this.direccion=direccion;
		this.localidad=localidad;
		this.nombre=nombre;
		this.estado=estado;
		this.tipologia=tipologia;
		this.tiendatipo=tiendatipo;
	}
	public TiendaDTO() {
		super();
		// TODO Auto-generated constructor stub
	}



	public TiendaDTO(int id_tienda, String cadena, String direccion, String localidad, String nombre, String estado) {
		super();
		this.id_tienda = id_tienda;
		this.cadena = cadena;
		this.direccion = direccion;
		this.localidad = localidad;
		this.nombre = nombre;
		this.estado = estado;
	}



	public int getId_tienda() {
		return id_tienda;
	}



	public void setId_tienda(int id_tienda) {
		this.id_tienda = id_tienda;
	}



	public String getCadena() {
		return cadena;
	}



	public void setCadena(String cadena) {
		this.cadena = cadena;
	}



	public String getDireccion() {
		return direccion;
	}



	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}



	public String getLocalidad() {
		return localidad;
	}



	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}



	public String getTipologia() {
		return tipologia;
	}
	public void setTipologia(String tipologia) {
		this.tipologia = tipologia;
	}
	
	
	public String getTiendatipo() {
		return tiendatipo;
	}
	public void setTiendatipo(String tiendatipo) {
		this.tiendatipo = tiendatipo;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public String getEstado() {
		return estado;
	}



	

	
	
	
}
