package com.org.DAO;


import java.util.List;

import com.org.DTO.BriefingDTO;



public interface BriefingInterface {
	public void NuevoBriefing(BriefingDTO briefing) ;
	public List<BriefingDTO> BuscarPorComentariosBriefing() ;

}
