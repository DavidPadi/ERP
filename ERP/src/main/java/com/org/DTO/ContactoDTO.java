package com.org.DTO;

import java.io.Serializable;

public class ContactoDTO implements Serializable{
	
	private int tlf_centro;
	private int tlf_patrimonio;
	private int tlf_seguridad;
	private int tlf_muelle;
	
	public ContactoDTO(int centro, int seguridad, int patrimonio, int muelle) {
		super();
		this.tlf_centro = centro;
		this.tlf_patrimonio = seguridad;
		this.tlf_seguridad = patrimonio;
		this.tlf_muelle = muelle;
	}

	public ContactoDTO() {
		super();
	}

	public int getTlf_centro() {
		return tlf_centro;
	}

	public void setTlf_centro(int tlf_centro) {
		this.tlf_centro = tlf_centro;
	}

	public int getTlf_patrimonio() {
		return tlf_patrimonio;
	}

	public void setTlf_patrimonio(int tlf_patrimonio) {
		this.tlf_patrimonio = tlf_patrimonio;
	}

	public int getTlf_seguridad() {
		return tlf_seguridad;
	}

	public void setTlf_seguridad(int tlf_seguridad) {
		this.tlf_seguridad = tlf_seguridad;
	}

	public int getTlf_muelle() {
		return tlf_muelle;
	}

	public void setTlf_muelle(int tlf_muelle) {
		this.tlf_muelle = tlf_muelle;
	}

	


	


	
	
}
