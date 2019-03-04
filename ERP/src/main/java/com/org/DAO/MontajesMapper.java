package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


import com.org.DTO.MontajeDTO;


	public class MontajesMapper implements RowMapper<MontajeDTO> {
		public MontajeDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			MontajeDTO montajes = new MontajeDTO(); 
			
			montajes.setId(rs.getInt("id"));
			montajes.setCc(rs.getInt("cc"));
			montajes.setMarca(rs.getString("marca"));
			montajes.setNumero(rs.getInt("numero"));
			montajes.setTitle(rs.getString("title"));
			montajes.setEstado_generalactivacion(rs.getString("estado_generalactivacion"));
			montajes.setZona(rs.getString("zona"));
			montajes.setCadena(rs.getString("cadena"));
			montajes.setCentro(rs.getString("centro"));
			montajes.setDescripcion(rs.getString("descripcion"));
			montajes.setLocalidad(rs.getString("localidad"));
			montajes.setProvincia(rs.getString("provincia"));
			montajes.setDetalle_exposicion(rs.getString("detalle_exposicion"));
			montajes.setTipologia_cliente(rs.getString("tipologia_cliente"));
			montajes.setStart(rs.getString("start"));
			montajes.setEnd(rs.getString("end"));
			montajes.setNombre_gpv(rs.getString("nombre_gpv"));
			montajes.setTlfn_gpv(rs.getInt("tlfn_gpv"));
			montajes.setMail_gpv(rs.getString("mail_gpv"));
			montajes.setComunicaciones_gpv(rs.getString("comunicaciones_gpv"));
			montajes.setPersona_cargo(rs.getString("persona_cargo"));
			montajes.setTlfn(rs.getInt("tlfn"));
			montajes.setMail_centro(rs.getString("mail_centro"));
			montajes.setComunicaciones_centro(rs.getString("comunicaciones_centro"));
			montajes.setPermite_promo(rs.getBoolean("permite_promo"));
			montajes.setHay_producto(rs.getBoolean("hay_producto"));
			montajes.setTv(rs.getBoolean("tv"));
			montajes.setFechanoposible_cerrada(rs.getString("fechanoposible_cerrada"));
			montajes.setObservaciones_planificacion(rs.getString("observaciones_planificacion"));
			montajes.setResultado_planificacion(rs.getString("resultado_planificacion"));
			montajes.setFechanoposible_cerrada(rs.getString("fechacerradaconcentro"));
			montajes.setHora_implantacion(rs.getString("hora_implantacion"));
			montajes.setFecha_implantacion(rs.getString("fecha_implantacion"));
			montajes.setImplantado(rs.getString("implantado"));
			montajes.setQuesehaimplantado(rs.getString("quesehaimplantado"));
			montajes.setFoto(rs.getBoolean("foto"));
			montajes.setEspacio(rs.getString("espacio"));
			montajes.setNo_permitenimplantar(rs.getString("no_permitenimplantar"));
			montajes.setTv_nolocalizada(rs.getString("tv_nolocalizada"));
			montajes.setNohayinsuficienteproducto(rs.getString("nohayinsuficienteproducto"));
			montajes.setNumero_visitas(rs.getInt("numero_visitas"));
			montajes.setObservaciones_implantacion(rs.getString("observaciones_implantacion"));
			montajes.setFecha_desmontaje(rs.getString("fecha_desmontaje"));
			montajes.setResultado_desmontaje(rs.getString("resultado_desmontaje"));
			montajes.setObservaciones_desmontaje(rs.getString("observaciones_desmontaje"));
			montajes.setResponsable_zona(rs.getString("responsable_zona"));
			montajes.setPz(rs.getString("pz"));
			montajes.setSubcontrata(rs.getString("subcontrata"));
			montajes.setAlmacen(rs.getString("almacen"));
			montajes.setDescripcion_tarjeta(rs.getString("descripcion_tarjeta"));
			montajes.setRuta(rs.getString("ruta"));
			montajes.setColor(rs.getString("color"));
			
			
			return montajes;
		}
	}

