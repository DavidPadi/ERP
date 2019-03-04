package com.org.DTO;

import java.io.Serializable;
import java.util.Date;

public class CampañaDTO implements Serializable{
	private String 	id_campanha;
	private int cliente;
	private String marca;
	private String nombre;
	private int cantidad_tiendas;
	
	private String localizacion;
	private String comentarios;
	private String interlocutor;
	private String fecha_inicio;
	private String fecha_fin;
	private String estado;
	private String ruta;
	
	
	public CampañaDTO() {
		super();
	}
	public CampañaDTO(String id_campanha,int cliente, String marca, String nombre, int cantidad_tiendas, 
			String localizacion, String comentarios, String interlocutor, String fecha_inicio, String fecha_fin,
			String estado, String ruta) {
		super();
		this.id_campanha=id_campanha;
		this.cliente = cliente;
		this.marca = marca;
		this.nombre = nombre;
		this.cantidad_tiendas = cantidad_tiendas;
		this.localizacion = localizacion;
		this.comentarios = comentarios;
		this.interlocutor = interlocutor;
		this.fecha_inicio = fecha_inicio;
		this.fecha_fin = fecha_fin;
		this.estado = estado;
		this.ruta=ruta;
	}
	public int getCliente() {
		return cliente;
	}
	public void setCliente(int cliente) {
		this.cliente = cliente;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getCantidad_tiendas() {
		return cantidad_tiendas;
	}
	public void setCantidad_tiendas(int cantidad_tiendas) {
		this.cantidad_tiendas = cantidad_tiendas;
	}
	public String getLocalizacion() {
		return localizacion;
	}
	public void setLocalizacion(String localizacion) {
		this.localizacion = localizacion;
	}
	public String getComentarios() {
		return comentarios;
	}
	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}
	public String getInterlocutor() {
		return interlocutor;
	}
	public void setInterlocutor(String interlocutor) {
		this.interlocutor = interlocutor;
	}
	public String getFecha_inicio() {
		return fecha_inicio;
	}
	public void setFecha_inicio(String fecha_inicio) {
		this.fecha_inicio = fecha_inicio;
	}
	public String getFecha_fin() {
		return fecha_fin;
	}
	public void setFecha_fin(String fecha_fin) {
		this.fecha_fin = fecha_fin;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	public String getId_campanha() {
		return id_campanha;
	}
	public void setId_campanha(String id_campanha) {
		this.id_campanha = id_campanha;
	}
	public String getRuta() {
		return ruta;
	}
	public void setRuta(String ruta) {
		this.ruta = ruta;
	}
	
	
}
