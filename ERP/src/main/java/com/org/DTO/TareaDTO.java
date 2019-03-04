package com.org.DTO;

public class TareaDTO {
	private String concurso;
	private String briefing;
	private String propuesta;
	private String estudio_costes;
	private String produccion;
	private String implantacion;
	private String montajes;
	private String postventa;
	private String resultado_camp;
	private String video;
	private String kit;
	private int id;
	private String produccion1;
	private String produccion2;
	private String produccion3;
	private String implantacion2;
	private String implantacion3;
	private String estado;
	
	

	public TareaDTO() {
		super();
	}
	
	

	public TareaDTO(String concurso, String briefing, String propuesta, String estudio_costes, String produccion,
			String implantacion, String montajes, String postventa, String resultado_camp, String video, String kit, int id,
			String produccion1, String produccion2, String produccion3, String implantacion2, String implantacion3, String estado) {
		super();
		this.concurso = concurso;
		this.briefing = briefing;
		this.propuesta = propuesta;
		this.estudio_costes = estudio_costes;
		this.produccion = produccion;
		this.implantacion = implantacion;
		this.montajes = montajes;
		this.postventa = postventa;
		this.resultado_camp = resultado_camp;
		this.video = video;
		this.kit = kit;
		this.id=id;
		this.produccion1=produccion1;
		this.produccion2=produccion2;
		this.produccion3=produccion3;
		this.implantacion2=implantacion2;
		this.implantacion3=implantacion3;
		this.estado=estado;
	}
	public String getConcurso() {
		return concurso;
	}
	public void setConcurso(String concurso) {
		this.concurso = concurso;
	}
	
	public int getId() {
		return id;
	}



	public String getEstado() {
		return estado;
	}



	public void setEstado(String estado) {
		this.estado = estado;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getBriefing() {
		return briefing;
	}
	public void setBriefing(String briefing) {
		this.briefing = briefing;
	}
	public String getPropuesta() {
		return propuesta;
	}
	public void setPropuesta(String propuesta) {
		this.propuesta = propuesta;
	}
	public String getEstudio_costes() {
		return estudio_costes;
	}
	public void setEstudio_costes(String estudio_costes) {
		this.estudio_costes = estudio_costes;
	}
	public String getProduccion() {
		return produccion;
	}
	public void setProduccion(String produccion) {
		this.produccion = produccion;
	}
	public String getImplantacion() {
		return implantacion;
	}
	public void setImplantacion(String implantacion) {
		this.implantacion = implantacion;
	}
	public String getMontajes() {
		return montajes;
	}
	public void setMontajes(String montajes) {
		this.montajes = montajes;
	}
	public String getPostventa() {
		return postventa;
	}
	public void setPostventa(String postventa) {
		this.postventa = postventa;
	}
	public String getResultado_camp() {
		return resultado_camp;
	}
	public void setResultado_camp(String resultado_camp) {
		this.resultado_camp = resultado_camp;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	public String getKit() {
		return kit;
	}
	public void setKit(String kit) {
		this.kit = kit;
	}



	public String getProduccion1() {
		return produccion1;
	}



	public void setProduccion1(String produccion1) {
		this.produccion1 = produccion1;
	}



	public String getProduccion2() {
		return produccion2;
	}



	public void setProduccion2(String produccion2) {
		this.produccion2 = produccion2;
	}



	public String getProduccion3() {
		return produccion3;
	}



	public void setProduccion3(String produccion3) {
		this.produccion3 = produccion3;
	}



	public String getImplantacion2() {
		return implantacion2;
	}



	public void setImplantacion2(String implantacion2) {
		this.implantacion2 = implantacion2;
	}



	public String getImplantacion3() {
		return implantacion3;
	}



	public void setImplantacion3(String implantacion3) {
		this.implantacion3 = implantacion3;
	}
	
	
}
