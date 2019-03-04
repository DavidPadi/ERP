package com.org.DTO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class MontajeDTO implements Serializable{

	private int id;
	private int cc;
	private String marca;
	private int numero;
	private String title;
	private String estado_generalactivacion;
	private String zona;
	private String cadena;
	private String centro;
	private String descripcion;
	private String localidad;
	private String provincia;
	private String detalle_exposicion;
	private String tipologia_cliente;
	private String start;
	private String end;
	private String nombre_gpv;
	private int tlfn_gpv;
	private String mail_gpv;
	private String comunicaciones_gpv;
	private String persona_cargo;
	private int tlfn;
	private String mail_centro;
	private String comunicaciones_centro;
	private Boolean permite_promo;
	private Boolean hay_producto;
	private Boolean tv;
	private String fechanoposible_cerrada;
	private String observaciones_planificacion;
	private String resultado_planificacion;
	private String fechacerradaconcentro;
	private String hora_implantacion;
	private String fecha_implantacion;
	private String implantado;
	private String quesehaimplantado;
	private Boolean foto;
	private String espacio;
	private String no_permitenimplantar;
	private String tv_nolocalizada;
	private String nohayinsuficienteproducto;
	private int numero_visitas;
	private String observaciones_implantacion;
	private String fecha_desmontaje;
	private String resultado_desmontaje;
	private String observaciones_desmontaje;
	private String responsable_zona;
	private String pz;
	private String subcontrata;
	private String almacen;
	private String descripcion_tarjeta;
	private String ruta;
	private String color;
	
	
	public MontajeDTO() {
		super();
	}
	
	public MontajeDTO(int cc2, String marca2, int cero, String title2, String estado_generalactivacion2, 
			String nada, String nada2, String nada3, String nada4, String nada5, String nada6, 
			String nada7, String nada8, String start2, String end2, String nada9, int cero2, String nada10, 
			String nada11, String nada12, int cero3, String nada13, String nada14, Boolean cero4, Boolean cero5, Boolean cero6,
			String nada15, String observaciones_planificacion2, String nada16, String nada17, String nada18, 
			String nada19, String nada20, String nada21, Boolean cero7, String nada22, String nada23, String nada24, 
			String nada25, int cero8, String nada26, String nada27, String nada28, String nada29, String nada30, 
			String nada31, String nada32, String nada33, String descripcion_tarjeta2,String ruta, String color2) {
		super();
		this.cc = cc2;
		this.marca = marca2;
		this.numero =  cero;
		this.title = title2;
		this.estado_generalactivacion = estado_generalactivacion2;
		this.zona = nada;
		this.cadena = nada2;
		this.centro=nada3;
		this.descripcion = nada4;
		this.localidad = nada5;
		this.provincia = nada6;
		this.detalle_exposicion = nada7;
		this.tipologia_cliente = nada8;
		this.start = start2;
		this.end = end2;
		this.nombre_gpv = nada9;
		this.tlfn_gpv = cero2;
		this.mail_gpv = nada10;
		this.comunicaciones_gpv = nada11;
		this.persona_cargo = nada12;
		this.tlfn = cero3;
		this.mail_centro = nada13;
		this.comunicaciones_centro = nada14;
		this.permite_promo = cero4;
		this.hay_producto = cero5;
		this.tv = cero6;
		this.fechanoposible_cerrada = nada15;
		this.observaciones_planificacion = observaciones_planificacion2;
		this.resultado_planificacion = nada16;
		this.fechacerradaconcentro = nada17;
		this.hora_implantacion = nada18;
		this.fecha_implantacion = nada19;
		this.implantado = nada20;
		this.quesehaimplantado = nada21;
		this.foto = cero7;
		this.espacio = nada22;
		this.no_permitenimplantar = nada23;
		this.tv_nolocalizada = nada24;
		this.nohayinsuficienteproducto = nada25;
		this.numero_visitas = cero8;
		this.observaciones_implantacion = nada26;
		this.fecha_desmontaje = nada27;
		this.resultado_desmontaje = nada28;
		this.observaciones_desmontaje = nada29;
		this.responsable_zona = nada30;
		this.pz = nada31;
		this.subcontrata = nada32;
		this.almacen = nada33;
		this.descripcion_tarjeta=descripcion_tarjeta2;
		this.ruta=ruta;
		this.color=color2;
	}
	
	
	
	public MontajeDTO(int cc, String marca, int numero, String title, String estado_generalactivacion, String zona,
			String cadena,  String descripcion, String localidad, String provincia,
			String detalle_exposicion, String tipologia_cliente, String start,
			String end, String nombre_gpv, int tlfn_gpv, String mail_gpv, String comunicaciones_gpv,
			String persona_cargo, int tlfn, String mail_centro, String comunicaciones_centro, Boolean permite_promo,
			Boolean hay_producto, Boolean tv, String fechanoposible_cerrada2, String observaciones_planificacion,
			String resultado_planificacion, String fechacerradaconcentro2, String hora_implantacion,
			String fecha_implantacion2, String implantado, String quesehaimplantado2, Boolean foto, String espacio,
			String no_permitenimplantar, String tv_nolocalizada, String nohayinsuficienteproducto, int numero_visitas,
			String observaciones_implantacion, String fecha_desmontaje2, String resultado_desmontaje,
			String observaciones_desmontaje, String responsable_zona, String pz, String subcontrata, String almacen,String descripcion_tarjeta,String color) {
		super();
		this.cc = cc;
		this.marca = marca;
		this.numero = numero;
		this.title = title;
		this.estado_generalactivacion = estado_generalactivacion;
		this.zona = zona;
		this.cadena = cadena;
		this.descripcion = descripcion;
		this.localidad = localidad;
		this.provincia = provincia;
		this.detalle_exposicion = detalle_exposicion;
		this.tipologia_cliente = tipologia_cliente;
		this.start = start;
		this.end = end;
		this.nombre_gpv = nombre_gpv;
		this.tlfn_gpv = tlfn_gpv;
		this.mail_gpv = mail_gpv;
		this.comunicaciones_gpv = comunicaciones_gpv;
		this.persona_cargo = persona_cargo;
		this.tlfn = tlfn;
		this.mail_centro = mail_centro;
		this.comunicaciones_centro = comunicaciones_centro;
		this.permite_promo = permite_promo;
		this.hay_producto = hay_producto;
		this.tv = tv;
		this.fechanoposible_cerrada = fechanoposible_cerrada2;
		this.observaciones_planificacion = observaciones_planificacion;
		this.resultado_planificacion = resultado_planificacion;
		this.fechacerradaconcentro = fechacerradaconcentro2;
		this.hora_implantacion = hora_implantacion;
		this.fecha_implantacion = fecha_implantacion2;
		this.implantado = implantado;
		this.quesehaimplantado = quesehaimplantado2;
		this.foto = foto;
		this.espacio = espacio;
		this.no_permitenimplantar = no_permitenimplantar;
		this.tv_nolocalizada = tv_nolocalizada;
		this.nohayinsuficienteproducto = nohayinsuficienteproducto;
		this.numero_visitas = numero_visitas;
		this.observaciones_implantacion = observaciones_implantacion;
		this.fecha_desmontaje = fecha_desmontaje2;
		this.resultado_desmontaje = resultado_desmontaje;
		this.observaciones_desmontaje = observaciones_desmontaje;
		this.responsable_zona = responsable_zona;
		this.pz = pz;
		this.subcontrata = subcontrata;
		this.almacen = almacen;
		this.descripcion_tarjeta=descripcion_tarjeta;
		this.color=color;
	}
	public MontajeDTO(int cc, String marca, int numero, String title, String estado_generalactivacion, String zona,
			String cadena, String  centro, String descripcion, String localidad, String provincia,
			String detalle_exposicion, String tipologia_cliente, String start,
			String end, String nombre_gpv, int tlfn_gpv, String mail_gpv, String comunicaciones_gpv,
			String persona_cargo, int tlfn, String mail_centro, String comunicaciones_centro, Boolean permite_promo,
			Boolean hay_producto, Boolean tv, String fechanoposible_cerrada2, String observaciones_planificacion,
			String resultado_planificacion, String fechacerradaconcentro2, String hora_implantacion,
			String fecha_implantacion2, String implantado, String quesehaimplantado2, Boolean foto, String espacio,
			String no_permitenimplantar, String tv_nolocalizada, String nohayinsuficienteproducto, int numero_visitas,
			String observaciones_implantacion, String fecha_desmontaje2, String resultado_desmontaje,
			String observaciones_desmontaje, String responsable_zona, String pz, String subcontrata, String almacen,String descripcion_tarjeta,String color) {
		super();
		this.cc = cc;
		this.marca = marca;
		this.numero = numero;
		this.title = title;
		this.estado_generalactivacion = estado_generalactivacion;
		this.zona = zona;
		this.cadena = cadena;
		this.centro=centro;
		this.descripcion = descripcion;
		this.localidad = localidad;
		this.provincia = provincia;
		this.detalle_exposicion = detalle_exposicion;
		this.tipologia_cliente = tipologia_cliente;
		this.start = start;
		this.end = end;
		this.nombre_gpv = nombre_gpv;
		this.tlfn_gpv = tlfn_gpv;
		this.mail_gpv = mail_gpv;
		this.comunicaciones_gpv = comunicaciones_gpv;
		this.persona_cargo = persona_cargo;
		this.tlfn = tlfn;
		this.mail_centro = mail_centro;
		this.comunicaciones_centro = comunicaciones_centro;
		this.permite_promo = permite_promo;
		this.hay_producto = hay_producto;
		this.tv = tv;
		this.fechanoposible_cerrada = fechanoposible_cerrada2;
		this.observaciones_planificacion = observaciones_planificacion;
		this.resultado_planificacion = resultado_planificacion;
		this.fechacerradaconcentro = fechacerradaconcentro2;
		this.hora_implantacion = hora_implantacion;
		this.fecha_implantacion = fecha_implantacion2;
		this.implantado = implantado;
		this.quesehaimplantado = quesehaimplantado2;
		this.foto = foto;
		this.espacio = espacio;
		this.no_permitenimplantar = no_permitenimplantar;
		this.tv_nolocalizada = tv_nolocalizada;
		this.nohayinsuficienteproducto = nohayinsuficienteproducto;
		this.numero_visitas = numero_visitas;
		this.observaciones_implantacion = observaciones_implantacion;
		this.fecha_desmontaje = fecha_desmontaje2;
		this.resultado_desmontaje = resultado_desmontaje;
		this.observaciones_desmontaje = observaciones_desmontaje;
		this.responsable_zona = responsable_zona;
		this.pz = pz;
		this.subcontrata = subcontrata;
		this.almacen = almacen;
		this.descripcion_tarjeta=descripcion_tarjeta;
		this.color=color;
	}

	public MontajeDTO(int id, int cc, String marca, int numero, String title, String estado_generalactivacion,
			String zona, String cadena, String centro, String descripcion, String localidad, String provincia,
			String detalle_exposicion, String tipologia_cliente, String start,
			String end, String nombre_gpv, int tlfn_gpv, String mail_gpv, String comunicaciones_gpv,
			String persona_cargo, int tlfn, String mail_centro, String comunicaciones_centro, Boolean permite_promo,
			Boolean hay_producto, Boolean tv, String fechanoposible_cerrada, String observaciones_planificacion,
			String resultado_planificacion, String fechacerradaconcentro, String hora_implantacion,
			String fecha_implantacion, String implantado, String quesehaimplantado, Boolean foto, String espacio,
			String no_permitenimplantar, String tv_nolocalizada, String nohayinsuficienteproducto, int numero_visitas,
			String observaciones_implantacion, String fecha_desmontaje, String resultado_desmontaje,
			String observaciones_desmontaje, String responsable_zona, String pz, String subcontrata, String almacen,String color) {
		super();
		this.id = id;
		this.cc = cc;
		this.marca = marca;
		this.numero = numero;
		this.title = title;
		this.estado_generalactivacion = estado_generalactivacion;
		this.zona = zona;
		this.cadena = cadena;
		this.centro = centro;
		this.descripcion = descripcion;
		this.localidad = localidad;
		this.provincia = provincia;
		this.detalle_exposicion = detalle_exposicion;
		this.tipologia_cliente = tipologia_cliente;
		this.start = start;
		this.end = end;
		this.nombre_gpv = nombre_gpv;
		this.tlfn_gpv = tlfn_gpv;
		this.mail_gpv = mail_gpv;
		this.comunicaciones_gpv = comunicaciones_gpv;
		this.persona_cargo = persona_cargo;
		this.tlfn = tlfn;
		this.mail_centro = mail_centro;
		this.comunicaciones_centro = comunicaciones_centro;
		this.permite_promo = permite_promo;
		this.hay_producto = hay_producto;
		this.tv = tv;
		this.fechanoposible_cerrada = fechanoposible_cerrada;
		this.observaciones_planificacion = observaciones_planificacion;
		this.resultado_planificacion = resultado_planificacion;
		this.fechacerradaconcentro = fechacerradaconcentro;
		this.hora_implantacion = hora_implantacion;
		this.fecha_implantacion = fecha_implantacion;
		this.implantado = implantado;
		this.quesehaimplantado = quesehaimplantado;
		this.foto = foto;
		this.espacio = espacio;
		this.no_permitenimplantar = no_permitenimplantar;
		this.tv_nolocalizada = tv_nolocalizada;
		this.nohayinsuficienteproducto = nohayinsuficienteproducto;
		this.numero_visitas = numero_visitas;
		this.observaciones_implantacion = observaciones_implantacion;
		this.fecha_desmontaje = fecha_desmontaje;
		this.resultado_desmontaje = resultado_desmontaje;
		this.observaciones_desmontaje = observaciones_desmontaje;
		this.responsable_zona = responsable_zona;
		this.pz = pz;
		this.subcontrata = subcontrata;
		this.almacen = almacen;
		this.color=color;
	}
	
	
	
	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getStart() {
		return start;
	}



	public void setStart(String start) {
		this.start = start;
	}



	public String getEnd() {
		return end;
	}



	public void setEnd(String end) {
		this.end = end;
	}



	public int getCc() {
		return cc;
	}
	public void setCc(int cc) {
		this.cc = cc;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEstado_generalactivacion() {
		return estado_generalactivacion;
	}
	public void setEstado_generalactivacion(String estado_generalactivacion) {
		this.estado_generalactivacion = estado_generalactivacion;
	}
	public String getZona() {
		return zona;
	}
	public void setZona(String zona) {
		this.zona = zona;
	}
	public String getCadena() {
		return cadena;
	}
	public void setCadena(String cadena) {
		this.cadena = cadena;
	}
	public String getCentro() {
		return centro;
	}
	public void setCentro(String centro) {
		this.centro = centro;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getLocalidad() {
		return localidad;
	}
	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public String getDetalle_exposicion() {
		return detalle_exposicion;
	}
	public void setDetalle_exposicion(String detalle_exposicion) {
		this.detalle_exposicion = detalle_exposicion;
	}
	public String getTipologia_cliente() {
		return tipologia_cliente;
	}
	public void setTipologia_cliente(String tipologia_cliente) {
		this.tipologia_cliente = tipologia_cliente;
	}
	
	public String getNombre_gpv() {
		return nombre_gpv;
	}
	public void setNombre_gpv(String nombre_gpv) {
		this.nombre_gpv = nombre_gpv;
	}
	public int getTlfn_gpv() {
		return tlfn_gpv;
	}
	public void setTlfn_gpv(int tlfn_gpv) {
		this.tlfn_gpv = tlfn_gpv;
	}
	public String getMail_gpv() {
		return mail_gpv;
	}
	public void setMail_gpv(String mail_gpv) {
		this.mail_gpv = mail_gpv;
	}
	public String getComunicaciones_gpv() {
		return comunicaciones_gpv;
	}
	public void setComunicaciones_gpv(String comunicaciones_gpv) {
		this.comunicaciones_gpv = comunicaciones_gpv;
	}
	public String getPersona_cargo() {
		return persona_cargo;
	}
	public void setPersona_cargo(String persona_cargo) {
		this.persona_cargo = persona_cargo;
	}
	public int getTlfn() {
		return tlfn;
	}
	public void setTlfn(int tlfn) {
		this.tlfn = tlfn;
	}
	public String getMail_centro() {
		return mail_centro;
	}
	public void setMail_centro(String mail_centro) {
		this.mail_centro = mail_centro;
	}
	public String getComunicaciones_centro() {
		return comunicaciones_centro;
	}
	public void setComunicaciones_centro(String comunicaciones_centro) {
		this.comunicaciones_centro = comunicaciones_centro;
	}
	public Boolean getPermite_promo() {
		return permite_promo;
	}
	public void setPermite_promo(Boolean permite_promo) {
		this.permite_promo = permite_promo;
	}
	public Boolean getHay_producto() {
		return hay_producto;
	}
	public void setHay_producto(Boolean hay_producto) {
		this.hay_producto = hay_producto;
	}
	public Boolean getTv() {
		return tv;
	}
	public void setTv(Boolean tv) {
		this.tv = tv;
	}
	public String getFechanoposible_cerrada() {
		return fechanoposible_cerrada;
	}
	public void setFechanoposible_cerrada(String fechanoposible_cerrada) {
		this.fechanoposible_cerrada = fechanoposible_cerrada;
	}
	public String getObservaciones_planificacion() {
		return observaciones_planificacion;
	}
	public void setObservaciones_planificacion(String observaciones_planificacion) {
		this.observaciones_planificacion = observaciones_planificacion;
	}
	public String getResultado_planificacion() {
		return resultado_planificacion;
	}
	public void setResultado_planificacion(String resultado_planificacion) {
		this.resultado_planificacion = resultado_planificacion;
	}
	
	public String getFechacerradaconcentro() {
		return fechacerradaconcentro;
	}
	public void setFechacerradaconcentro(String fechacerradaconcentro) {
		this.fechacerradaconcentro = fechacerradaconcentro;
	}
	public String getHora_implantacion() {
		return hora_implantacion;
	}
	public void setHora_implantacion(String hora_implantacion) {
		this.hora_implantacion = hora_implantacion;
	}
	public String getFecha_implantacion() {
		return fecha_implantacion;
	}
	public void setFecha_implantacion(String fecha_implantacion) {
		this.fecha_implantacion = fecha_implantacion;
	}
	public String getImplantado() {
		return implantado;
	}
	public void setImplantado(String implantado) {
		this.implantado = implantado;
	}
	public String getQuesehaimplantado() {
		return quesehaimplantado;
	}
	public void setQuesehaimplantado(String quesehaimplantado) {
		this.quesehaimplantado = quesehaimplantado;
	}
	public Boolean getFoto() {
		return foto;
	}
	public void setFoto(Boolean foto) {
		this.foto = foto;
	}
	public String getEspacio() {
		return espacio;
	}
	public void setEspacio(String espacio) {
		this.espacio = espacio;
	}
	public String getNo_permitenimplantar() {
		return no_permitenimplantar;
	}
	public void setNo_permitenimplantar(String no_permitenimplantar) {
		this.no_permitenimplantar = no_permitenimplantar;
	}
	public String getTv_nolocalizada() {
		return tv_nolocalizada;
	}
	public void setTv_nolocalizada(String tv_nolocalizada) {
		this.tv_nolocalizada = tv_nolocalizada;
	}
	
	public String getNohayinsuficienteproducto() {
		return nohayinsuficienteproducto;
	}
	public void setNohayinsuficienteproducto(String nohayinsuficienteproducto) {
		this.nohayinsuficienteproducto = nohayinsuficienteproducto;
	}
	public int getNumero_visitas() {
		return numero_visitas;
	}
	public void setNumero_visitas(int numero_visitas) {
		this.numero_visitas = numero_visitas;
	}
	public String getObservaciones_implantacion() {
		return observaciones_implantacion;
	}
	public void setObservaciones_implantacion(String observaciones_implantacion) {
		this.observaciones_implantacion = observaciones_implantacion;
	}
	public String getFecha_desmontaje() {
		return fecha_desmontaje;
	}
	public void setFecha_desmontaje(String fecha_desmontaje) {
		this.fecha_desmontaje = fecha_desmontaje;
	}
	public String getResultado_desmontaje() {
		return resultado_desmontaje;
	}
	public void setResultado_desmontaje(String resultado_desmontaje) {
		this.resultado_desmontaje = resultado_desmontaje;
	}
	public String getObservaciones_desmontaje() {
		return observaciones_desmontaje;
	}
	public void setObservaciones_desmontaje(String observaciones_desmontaje) {
		this.observaciones_desmontaje = observaciones_desmontaje;
	}
	public String getResponsable_zona() {
		return responsable_zona;
	}
	public void setResponsable_zona(String responsable_zona) {
		this.responsable_zona = responsable_zona;
	}
	public String getPz() {
		return pz;
	}
	public void setPz(String pz) {
		this.pz = pz;
	}
	public String getSubcontrata() {
		return subcontrata;
	}
	public void setSubcontrata(String subcontrata) {
		this.subcontrata = subcontrata;
	}
	public String getAlmacen() {
		return almacen;
	}
	public void setAlmacen(String almacen) {
		this.almacen = almacen;
	}
	
	public String getDescripcion_tarjeta() {
		return descripcion_tarjeta;
	}
	public void setDescripcion_tarjeta(String descripcion_tarjeta) {
		this.descripcion_tarjeta = descripcion_tarjeta;
	}
	public String getRuta() {
		return ruta;
	}
	public void setRuta(String ruta) {
		this.ruta = ruta;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	
	
	
	
}
