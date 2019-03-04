package com.org.DTO;

import java.io.Serializable;

public class EstudioCostesDTO implements Serializable{
	private String titulo;
	private String equipo;
	private String fechaentrega;
	private String fases;
	private String etiquetas;
	private String adjunto;
	private String descripcion;
	private String comentarios;
	private String estado;
	

	public EstudioCostesDTO() {
		super();
	}
	public EstudioCostesDTO(String titulo, String equipo, String fechaentrega, String fases, String etiquetas,
			String adjunto, String descripcion, String comentarios, String estado) {
		super();
		this.titulo = titulo;
		this.equipo = equipo;
		this.fechaentrega = fechaentrega;
		this.fases = fases;
		this.etiquetas = etiquetas;
		this.adjunto = adjunto;
		this.descripcion = descripcion;
		this.comentarios = comentarios;
		this.estado=estado;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getEquipo() {
		return equipo;
	}
	public void setEquipo(String equipo) {
		this.equipo = equipo;
	}
	public String getFechaentrega() {
		return fechaentrega;
	}
	public void setFechaentrega(String fechaentrega) {
		this.fechaentrega = fechaentrega;
	}
	public String getFases() {
		return fases;
	}
	public void setFases(String fases) {
		this.fases = fases;
	}
	public String getEtiquetas() {
		return etiquetas;
	}
	public void setEtiquetas(String etiquetas) {
		this.etiquetas = etiquetas;
	}
	public String getAdjunto() {
		return adjunto;
	}
	public void setAdjunto(String adjunto) {
		this.adjunto = adjunto;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getComentarios() {
		return comentarios;
	}
	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}
	
}
