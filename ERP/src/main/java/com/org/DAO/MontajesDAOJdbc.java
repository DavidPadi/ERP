package com.org.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.CampañaDTO;
import com.org.DTO.CentroDTO;
import com.org.DTO.MontajeDTO;

@Repository
public class MontajesDAOJdbc implements MontajesInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}

	
	public List<MontajeDTO> ListarMontajes() {
		String sql = "SELECT * from montajes"; 
		MontajesMapper mapper = new MontajesMapper();
		List<MontajeDTO> montajes = this.jdbcTemplate.query(sql, mapper);
		return montajes;
	}
	public void Actualizar(MontajeDTO montaje, Integer id) {
		  String sql = "update montajes set cc=?,marca=?,numero=?,title=?,estado_generalactivacion=?,zona=?,cadena=?,descripcion=?,localidad=?,provincia=?,detalle_exposicion=?,tipologia_cliente=?,start=?,end=?,nombre_gpv=?, tlfn_gpv=?,mail_gpv=?,comunicaciones_gpv=?, persona_cargo=?,tlfn=?,mail_centro=?,comunicaciones_centro=?,permite_promo=?, hay_producto=?,tv=?,fechanoposible_cerrada=?,observaciones_planificacion=?,resultado_planificacion=?, fechacerradaconcentro=?,hora_implantacion=?,fecha_implantacion=? ,implantado=?, quesehaimplantado=?,foto=?,espacio=?,no_permitenimplantar=?,tv_nolocalizada=?, nohayinsuficienteproducto=?, numero_visitas=?,observaciones_implantacion=?,fecha_desmontaje=?,resultado_desmontaje=? ,observaciones_desmontaje=?,responsable_zona=?,pz=?,subcontrata=?,almacen=?,descripcion_tarjeta=?,color=? where id = ?";
	      this.jdbcTemplate.update(sql,montaje.getCc(),montaje.getMarca(),montaje.getNumero(),montaje.getTitle(),montaje.getEstado_generalactivacion(),montaje.getZona(),montaje.getCadena(),montaje.getDescripcion(),montaje.getLocalidad(),montaje.getProvincia(),montaje.getDetalle_exposicion(),montaje.getTipologia_cliente(),montaje.getStart(),montaje.getEnd(),montaje.getNombre_gpv(),montaje.getTlfn_gpv(),montaje.getMail_gpv(),montaje.getComunicaciones_gpv(),montaje.getPersona_cargo(),montaje.getTlfn(),montaje.getMail_centro(),montaje.getComunicaciones_centro(),montaje.getPermite_promo(),montaje.getHay_producto(),montaje.getTv(),montaje.getFechanoposible_cerrada(),montaje.getObservaciones_planificacion(),montaje.getResultado_planificacion(),montaje.getFechacerradaconcentro(),montaje.getHora_implantacion(),montaje.getFecha_implantacion(),montaje.getImplantado(),montaje.getQuesehaimplantado(),montaje.getFoto(),montaje.getEspacio(),montaje.getNo_permitenimplantar(),montaje.getTv_nolocalizada(),montaje.getNohayinsuficienteproducto(),montaje.getNumero_visitas(),montaje.getObservaciones_implantacion(),montaje.getFecha_desmontaje(),montaje.getResultado_desmontaje(),montaje.getObservaciones_desmontaje(),montaje.getResponsable_zona(),montaje.getPz(),montaje.getSubcontrata(),montaje.getAlmacen(),montaje.getDescripcion_tarjeta(),montaje.getColor(), id);
	}
	public void NuevaTarjeta(MontajeDTO montaje) {
		
		String sql = "insert into montajes (cc,marca,numero,title,estado_generalactivacion,zona,cadena,centro,descripcion,localidad,provincia,detalle_exposicion,tipologia_cliente,start,end,nombre_gpv, tlfn_gpv,mail_gpv,comunicaciones_gpv, persona_cargo,tlfn,mail_centro,comunicaciones_centro,permite_promo, hay_producto,tv,fechanoposible_cerrada,observaciones_planificacion,resultado_planificacion, fechacerradaconcentro,hora_implantacion,fecha_implantacion ,implantado, quesehaimplantado,foto,espacio,no_permitenimplantar,tv_nolocalizada, nohayinsuficienteproducto, numero_visitas,observaciones_implantacion,fecha_desmontaje,resultado_desmontaje ,observaciones_desmontaje,responsable_zona,pz,subcontrata,almacen,descripcion_tarjeta,ruta,color) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {montaje.getCc(),montaje.getMarca(),montaje.getNumero(),montaje.getTitle(),montaje.getEstado_generalactivacion(),montaje.getZona(),montaje.getCadena(),montaje.getCentro(),montaje.getDescripcion(),montaje.getLocalidad(),montaje.getProvincia(),montaje.getDetalle_exposicion(),montaje.getTipologia_cliente(),montaje.getStart(),montaje.getEnd(),montaje.getNombre_gpv(),montaje.getTlfn_gpv(),montaje.getMail_gpv(),montaje.getComunicaciones_gpv(),montaje.getPersona_cargo(),montaje.getTlfn(),montaje.getMail_centro(),montaje.getComunicaciones_centro(),montaje.getPermite_promo(),montaje.getHay_producto(),montaje.getTv(),montaje.getFechanoposible_cerrada(),montaje.getObservaciones_planificacion(),montaje.getResultado_planificacion(),montaje.getFechacerradaconcentro(),montaje.getHora_implantacion(),montaje.getFecha_implantacion(),montaje.getImplantado(),montaje.getQuesehaimplantado(),montaje.getFoto(),montaje.getEspacio(),montaje.getNo_permitenimplantar(),montaje.getTv_nolocalizada(),montaje.getNohayinsuficienteproducto(),montaje.getNumero_visitas(),montaje.getObservaciones_implantacion(),montaje.getFecha_desmontaje(),montaje.getResultado_desmontaje(),montaje.getObservaciones_desmontaje(),montaje.getResponsable_zona(),montaje.getPz(),montaje.getSubcontrata(),montaje.getAlmacen(),montaje.getDescripcion_tarjeta(),montaje.getRuta(),montaje.getColor()};
		this.jdbcTemplate.update(sql,parametros);
		
	}
	public List<MontajeDTO> BuscarPorCentro() {
		String sql = "select centro from montajes";
		MontajesMapper mapper = new MontajesMapper();
		List<MontajeDTO> montaje = this.jdbcTemplate.query(sql, mapper);
		return montaje;
		}
	public void Borrarmontaje(int id) {
		String sql = "delete  from montajes where id = ?";
		Object[] parametros = {id};
		this.jdbcTemplate.update(sql,parametros);
		}
	}
	

