package com.org.DAO;

import java.util.List;

import com.org.DTO.ConcursoDTO;
import com.org.DTO.TareaDTO;

public interface TareaInterface {
	public List<TareaDTO> ListarTareas();
	public void ActualizarConcurso(TareaDTO tarea,String estado, Integer id) ;
	public void ActualizarBriefing(TareaDTO tarea,String estado,  Integer id);
	public void ActualizarPropuesta(TareaDTO tarea,String estado,  Integer id);
	public void ActualizarEstudioCostes(TareaDTO tarea, String estado, Integer id);
	public void ActualizarProduccion(TareaDTO tarea,String estado, Integer id);
	public void ActualizarImplantacion(TareaDTO tarea,String estado,  Integer id);
	public void ActualizarMontajes(TareaDTO tarea,String estado,  Integer id);
	public void ActualizarPostventa(TareaDTO tarea, String estado, Integer id);
	public void ActualizarResultadocampaña(TareaDTO tarea,String estado,  Integer id);
	public void ActualizarVideo(TareaDTO tarea,String estado,  Integer id);
	public void ActualizarKit(TareaDTO tarea,String estado,  Integer id);
	public void ActualizarProduccion1(TareaDTO tarea,String estado,  Integer id);
	public void ActualizarProduccion2(TareaDTO tarea,String estado,  Integer id);
	public void ActualizarProduccion3(TareaDTO tarea, String estado, Integer id);
	public void ActualizarImplantacion2(TareaDTO tarea,String estado,  Integer id);
	public void ActualizarImplantacion3(TareaDTO tarea,String estado,  Integer id);
	public List<ConcursoDTO> BuscarPorFechaentrega();
}
