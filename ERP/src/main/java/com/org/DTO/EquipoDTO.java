package com.org.DTO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class EquipoDTO implements Serializable{
	
	private String titulo;
	private String fecha_in;
	private String fecha_fin;
	private String descripcion;
	private int id;
	
	public EquipoDTO() {
		super();
	}


	public EquipoDTO(String titulo,String descripcion, String fecha_in, String fecha_fin) {
		super();
		this.titulo = titulo;
		this.descripcion = descripcion;
		this.fecha_in = fecha_in;
		this.fecha_fin = fecha_fin;
		
	}


	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getFecha_in() {
		return fecha_in;
	}


	public void setFecha_in(String fecha_in) {
		this.fecha_in = fecha_in;
	}


	public String getFecha_fin() {
		return fecha_fin;
	}


	public void setFecha_fin(String fecha_fin) {
		this.fecha_fin = fecha_fin;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}



	
	
}
