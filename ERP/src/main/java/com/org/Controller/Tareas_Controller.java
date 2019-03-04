package com.org.Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.org.DAO.BriefingInterface;
import com.org.DAO.CampañaDaoInterface;
import com.org.DAO.ConcursoInterface;
import com.org.DAO.EstudioCostesInterface;
import com.org.DAO.ImplantacionInterface;
import com.org.DAO.KitInterface;
import com.org.DAO.PostventaInterface;
import com.org.DAO.ProduccionInterface;
import com.org.DAO.PropuestaInterface;
import com.org.DAO.ResultadocampInterface;
import com.org.DAO.TareaInterface;
import com.org.DAO.TareasMontajesInterface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DAO.VideoInterface;
import com.org.DTO.BriefingDTO;
import com.org.DTO.CampañaDTO;
import com.org.DTO.ConcursoDTO;
import com.org.DTO.EstudioCostesDTO;
import com.org.DTO.ImplantacionDTO;
import com.org.DTO.KitDTO;
import com.org.DTO.PostventaDTO;
import com.org.DTO.ProduccionDTO;
import com.org.DTO.PropuestaDTO;
import com.org.DTO.ResultadocampDTO;
import com.org.DTO.TareaDTO;
import com.org.DTO.TareaMontajeDTO;
import com.org.DTO.UsuarioDTO;
import com.org.DTO.VideoDTO;

@Controller
public class Tareas_Controller {
	
	@Autowired
	private UploadFileService uploadFileService;
	@Autowired
	private UsuariosDaoInterface dao;
	@Autowired
	private ConcursoInterface dao1;
	@Autowired
	private BriefingInterface dao2;
	@Autowired
	private PropuestaInterface dao3;
	@Autowired
	private EstudioCostesInterface dao4;
	@Autowired
	private ProduccionInterface dao5;
	@Autowired
	private ImplantacionInterface dao6;
	@Autowired
	private TareasMontajesInterface dao7;
	@Autowired
	private PostventaInterface dao8;
	@Autowired
	private ResultadocampInterface dao9;
	@Autowired
	private VideoInterface dao10;
	@Autowired
	private KitInterface dao11;
	@Autowired
	private TareaInterface dao12;
	
	
	@RequestMapping(value="/Tareas",method = RequestMethod.POST)
	public String Tareas(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		
		String nombre=request.getParameter("nombre");
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit();
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("nombre", nombre);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		return "Plantillas";
		
		
	}
	
	
	//Concurso_tarea
	@RequestMapping(value="/Concurso",method = RequestMethod.POST)
	public String Concurso(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		int id_trabajadores=Integer.parseInt(request.getParameter("equipo"));
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		String estado="encurso";
		ConcursoDTO concurso = new ConcursoDTO(titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,0,estado);		
		dao1.NuevoConcurso(concurso);
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<UsuarioDTO> trabajador =dao.ListarUsuarios(  );
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("com", com);
		return "Plantillas";
		
	}
	//modal dentro del briefing
	@RequestMapping(value="/Briefing",method = RequestMethod.POST)
	public String Briefing(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		String equipo=request.getParameter("equipo");
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		String estado="encurso";
		BriefingDTO briefing = new BriefingDTO(titulo,equipo,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado);		
		dao2.NuevoBriefing(briefing);
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<UsuarioDTO> trabajador =dao.ListarUsuarios(  );
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("bri", bri);
		return "Plantillas";
		
	}
	
	//modal propuesta diseño
	@RequestMapping(value="/Propuesta",method = RequestMethod.POST)
	public String Propuesta(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		String equipo=request.getParameter("equipo");
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		String estado="encurso";
		PropuestaDTO propuesta = new PropuestaDTO(titulo,equipo,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado);		
		dao3.NuevaPropuesta(propuesta);
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		return "Plantillas";
		
	}
	@RequestMapping(value="/EstudioCostes",method = RequestMethod.POST)
	public String EstudioCostes(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		String equipo=request.getParameter("equipo");
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		String estado="encurso";
		
		EstudioCostesDTO estudios = new EstudioCostesDTO(titulo,equipo,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado);		
		dao4.NuevoEstudiocostes(estudios);
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("est", est);
		return "Plantillas";
		
	}
	//editar con estado
	@RequestMapping(value="/Produccion",method = RequestMethod.POST)
	public String Produccion(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		int id_trabajadores=Integer.parseInt(request.getParameter("equipo"));
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		String estado="encurso";
		
		ProduccionDTO produccion = new ProduccionDTO(titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado);		
		dao5.NuevaProduccion(produccion);
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("prod", prod);
		return "Plantillas";
		
	}
	@RequestMapping(value="/Implantacion",method = RequestMethod.POST)
	public String Implantacion(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		int id_trabajadores=Integer.parseInt(request.getParameter("equipo"));
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		String estado="encurso";
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		ImplantacionDTO implantacion = new ImplantacionDTO(titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado);		
		dao6.NuevaImplantacion(implantacion);
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("impla", impla);
		return "Plantillas";
		
	}
	@RequestMapping(value="/TareaMontaje",method = RequestMethod.POST)
	public String TareaMontaje(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		int id_trabajadores=Integer.parseInt(request.getParameter("equipo"));
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		String estado="encurso";
		TareaMontajeDTO tareas = new TareaMontajeDTO(titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado);		
		dao7.NuevaTareasMontaje(tareas);
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("ta", ta);
		return "Plantillas";
		
	}
	@RequestMapping(value="/Postventa",method = RequestMethod.POST)
	public String Postventa(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		int id_trabajadores=Integer.parseInt(request.getParameter("equipo"));
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		String estado="encurso";
		PostventaDTO postventa = new PostventaDTO(titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado);		
		dao8.NuevaPostventa(postventa);
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("post", post);
		return "Plantillas";
		
	}
	@RequestMapping(value="/Resultado_campaña",method = RequestMethod.POST)
	public String Resultado_campaña(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		int id_trabajadores=Integer.parseInt(request.getParameter("equipo"));
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		String estado="encurso";
		ResultadocampDTO postventa = new ResultadocampDTO(titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado);
		
		dao9.NuevoResultadocamp( postventa);
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("resul", resul);
		return "Plantillas";
		
	}
	@RequestMapping(value="/Video",method = RequestMethod.POST)
	public String Video(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		int id_trabajadores=Integer.parseInt(request.getParameter("equipo"));
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		String estado="encurso";
		VideoDTO video = new VideoDTO(titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado);
		
		dao10.NuevoVideo( video);
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("vi", vi);
		return "Plantillas";
		
	}
	@RequestMapping(value="/Kit",method = RequestMethod.POST)
	public String Kit(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model,
			@RequestParam("adjunto") MultipartFile file) throws ParseException {
		HttpSession session = request.getSession(true);
		
		
		String titulo= request.getParameter("titulo");
		int id_trabajadores=Integer.parseInt(request.getParameter("equipo"));
		String fechaentrega=request.getParameter("fechaentrega");
		String fases=request.getParameter("fases");
		String etiquetas= request.getParameter("etiquetas");
		String descripcion=request.getParameter("descripcion");
		String comentarios=request.getParameter("comentarios");
		//guardar archivo
				try {
					uploadFileService.saveFile(file);
				}catch(IOException e) {
					e.printStackTrace();
				}
				
		//Obtenemos la ruta relativa de las imagenes del proyecto
		String adjunto=uploadFileService.getRuta();
		String estado="encurso";
		KitDTO k = new KitDTO(titulo,id_trabajadores,fechaentrega,fases,etiquetas,adjunto,descripcion,comentarios,estado);
		dao11.NuevoKit(k);
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		
		List<KitDTO> kit=dao11.BuscarPorComentariosKit();
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("kit", kit);
		
		
		
		
		return "Plantillas";
		
	}
	@RequestMapping(value="/EditarConcurso",method = RequestMethod.POST)
	public String Editar(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String concurso=request.getParameter("concurso");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO con=new TareaDTO(concurso,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		dao12.ActualizarConcurso(con, estado,id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit();
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarProduccion",method = RequestMethod.POST)
	public String EditarProduccion(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String produccion=request.getParameter("produccion");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO pr=new TareaDTO(produccion,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarProduccion(pr, estado,id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit();
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarProduccion1",method = RequestMethod.POST)
	public String EditarProduccion1(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String produccion1=request.getParameter("produccion1");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO p1=new TareaDTO(produccion1,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarProduccion1(p1, estado,id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit();
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarImplantacion",method = RequestMethod.POST)
	public String EditarImplantacion(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String implantacion=request.getParameter("implantacion");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO i=new TareaDTO(implantacion,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarImplantacion(i, estado,id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit();
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarPostventa",method = RequestMethod.POST)
	public String EditarPostventa(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String postventa=request.getParameter("postventa");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO po=new TareaDTO(postventa,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarPostventa(po, estado,id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit();
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarMontajes",method = RequestMethod.POST)
	public String EditarMontajes(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String montajes=request.getParameter("montajes");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO m=new TareaDTO(montajes,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarMontajes(m, estado,id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit();
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarResultadocamp",method = RequestMethod.POST)
	public String EditarResultdocamp(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String resultado_camp=request.getParameter("resultado_campaña");
		int id=Integer.parseInt(request.getParameter("id"));
		
		String estado="encurso";
		TareaDTO resultado=new TareaDTO(resultado_camp,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarResultadocampaña(resultado, estado, id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit();
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarBriefing",method = RequestMethod.POST)
	public String EditarBriefing(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String briefing=request.getParameter("briefing");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		
		TareaDTO b=new TareaDTO(briefing,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarBriefing(b, estado, id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit(); 
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarImplantacion2",method = RequestMethod.POST)
	public String EditarImplantacion2(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String implantacion2=request.getParameter("implantacion2");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		
		TareaDTO i2=new TareaDTO(implantacion2,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarImplantacion2(i2,  estado,id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit(); 
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarImplantacion3",method = RequestMethod.POST)
	public String EditarImplantacion3(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String implantacion3=request.getParameter("implantacion3");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO i3=new TareaDTO(implantacion3,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarImplantacion3(i3, estado, id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit(); 
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarProduccion2",method = RequestMethod.POST)
	public String EditarProduccion2(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String produccion2=request.getParameter("produccion2");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO o=new TareaDTO(produccion2,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarProduccion2(o, estado, id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit(); 
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarProduccion3",method = RequestMethod.POST)
	public String EditarProduccion3(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String produccion3=request.getParameter("produccion3");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO p3=new TareaDTO(produccion3,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarProduccion3(p3, estado, id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit(); 
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarPropuesta",method = RequestMethod.POST)
	public String EditarPropuesta(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String propuest=request.getParameter("propuesta");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO pr=new TareaDTO(propuest,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarPropuesta(pr, estado, id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit(); 
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarVideo",method = RequestMethod.POST)
	public String EditarVideo(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {

		HttpSession session = request.getSession(true);
		
		String nada="";
		String video=request.getParameter("video");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO v=new TareaDTO(video,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarVideo(v, estado, id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit(); 
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarCostes",method = RequestMethod.POST)
	public String EditarCostes(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String estudio_costes=request.getParameter("estudio_costes");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO es=new TareaDTO(estudio_costes,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarEstudioCostes(es, estado, id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit(); 
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/EditarKit",method = RequestMethod.POST)
	public String EditarKit(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		String nada="";
		String kitt=request.getParameter("kit");
		int id=Integer.parseInt(request.getParameter("id"));
		String estado="encurso";
		TareaDTO k=new TareaDTO(kitt,nada,nada,nada,nada,nada,nada,nada,nada,nada,nada,0,nada,nada,nada,nada,nada,estado);
		
		
		dao12.ActualizarKit(k, estado, id);
		
		
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<BriefingDTO> bri=dao2.BuscarPorComentariosBriefing();
		List<PropuestaDTO> pro=dao3.BuscarPorComentariosPropuesta();
		List<EstudioCostesDTO> est=dao4.BuscarPorComentariosEstudiosCostes();
		List<ProduccionDTO> prod=dao5.BuscarPorComentariosProduccion();
		List<ImplantacionDTO> impla=dao6.BuscarPorComentariosImplantacion();
		List<TareaMontajeDTO> ta=dao7.BuscarPorComentariosTareasMontaje();
		List<PostventaDTO> post=dao8.BuscarPorComentariosPostventa();
		List<ResultadocampDTO> resul=dao9.BuscarPorComentariosResultadocamp();
		List<VideoDTO> vi=dao10.BuscarPorComentariosVideo();
		List<KitDTO> kit=dao11.BuscarPorComentariosKit(); 
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		session.setAttribute("bri", bri);
		session.setAttribute("com", com);
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("pro", pro);
		session.setAttribute("prod", prod);
		session.setAttribute("est", est);
		session.setAttribute("impla", impla);
		session.setAttribute("ta", ta);
		session.setAttribute("post", post);
		session.setAttribute("resul",resul);
		session.setAttribute("vi",vi);
		session.setAttribute("kit",kit);
		session.setAttribute("tarea",tarea);
		
		return "Plantillas";
	}
	@RequestMapping(value="/MisTareas",method = RequestMethod.GET)
	public String MisTareas(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		Cookie[ ] cookies = request.getCookies();
		String cookieName = "emailCookie";
		String email="";
		
		if(cookies!=null) {
			for(Cookie cookie:cookies) {
				if(cookieName.equals(cookie.getName())) {
					email = cookie.getValue();
				}
			}
		}
		
		
		UsuarioDTO e=dao.ComprobarUsuario(email);
		int id_trabajadores=e.getId_trabajadores();
		
		System.out.print("email: "+email+"tiene el id:"+id_trabajadores);
		
		//Buscar tarea para ese id de trabajadores dentro de CONCURSO_tarea
		List<ConcursoDTO> tarea_idtrabajador=dao1.BuscarTareaporIdTrabajadores(id_trabajadores);
		//Buscar tarea para ese id de trabajadores dentro de PRODUCCION_tarea
		List<ProduccionDTO> produccion_tarea= dao5.BuscarTareaporIdTrabajadores(id_trabajadores);
		
		//Implantacion 
		List<ImplantacionDTO> tarea_idimplantacion= dao6.BuscarTareaporIdTrabajadores(id_trabajadores);
		
		//Postventa
		List<PostventaDTO> post_tarea_id=dao8.BuscarTareaporIdTrabajadores(id_trabajadores);
		
		//Listar
		List<ConcursoDTO> com=dao1.BuscarPorComentarios();
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();
		List<TareaDTO> tarea=dao12.ListarTareas();
		
		
		
		session.setAttribute("trabajador", trabajador);
		session.setAttribute("com", com);
		session.setAttribute("email", email);
		session.setAttribute("tarea_idtrabajador", tarea_idtrabajador);
		session.setAttribute("tarea", tarea);
		session.setAttribute("produccion_tarea", produccion_tarea);
		session.setAttribute("tarea_idimplantacion", tarea_idimplantacion);
		session.setAttribute("post_tarea_id", post_tarea_id);
		
		return "MisTareas";
		
		
	}
	@RequestMapping(value="/FinalizarConcurso",method = RequestMethod.POST)
	public String FinalizarConcurso(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		Cookie[ ] cookies = request.getCookies();
		String cookieName = "emailCookie";
		String email="";
		
		if(cookies!=null) {
			for(Cookie cookie:cookies) {
				if(cookieName.equals(cookie.getName())) {
					email = cookie.getValue();
				}
			}
		}

		String estado=request.getParameter("finalizado");
		System.out.println("El estado es"+estado);
		UsuarioDTO e=dao.ComprobarUsuario(email);
		int id_trabajadores=e.getId_trabajadores();
		
		System.out.print("email: "+email+" tiene el id:"+id_trabajadores);
		dao1.Actualizar(estado, id_trabajadores);
		//Buscar tarea para ese id de trabajadores dentro de CONCURSO_tarea
		List<ConcursoDTO> tarea_idtrabajador=dao1.BuscarTareaporIdTrabajadores(id_trabajadores);
		List<TareaDTO> tarea=dao12.ListarTareas();
		session.setAttribute("email", email);
		session.setAttribute("tarea_idtrabajador", tarea_idtrabajador);
		session.setAttribute("tarea", tarea);
		
		return "MisTareas";
	}
	
	@RequestMapping(value="/FinalizarProduccion",method = RequestMethod.POST)
	public String FinalizarProduccion(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		Cookie[ ] cookies = request.getCookies();
		String cookieName = "emailCookie";
		String email="";
		
		if(cookies!=null) {
			for(Cookie cookie:cookies) {
				if(cookieName.equals(cookie.getName())) {
					email = cookie.getValue();
				}
			}
		}

		String estado=request.getParameter("finalizado");
		System.out.println("El estado es"+estado);
		UsuarioDTO e=dao.ComprobarUsuario(email);
		int id_trabajadores=e.getId_trabajadores();
		
		System.out.print("email: "+email+" tiene el id:"+id_trabajadores);
		
		//Actualizar produccion
		dao5.ActualizarProduccion(estado, id_trabajadores);
		//Buscar tarea para ese id de trabajadores dentro de CONCURSO_tarea
		List<ProduccionDTO> produccion_tarea=dao5.BuscarTareaporIdTrabajadores(id_trabajadores);
		List<TareaDTO> tarea=dao12.ListarTareas();
		session.setAttribute("email", email);
		session.setAttribute("produccion_tarea", produccion_tarea);
		session.setAttribute("tarea", tarea);
		
		return "MisTareas";
	}
	@RequestMapping(value="/FinalizarImplantacion",method = RequestMethod.POST)
	public String FinalizarImplantacion(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		Cookie[ ] cookies = request.getCookies();
		String cookieName = "emailCookie";
		String email="";
		
		if(cookies!=null) {
			for(Cookie cookie:cookies) {
				if(cookieName.equals(cookie.getName())) {
					email = cookie.getValue();
				}
			}
		}

		String estado=request.getParameter("finalizado");
		System.out.println("El estado es"+estado);
		UsuarioDTO e=dao.ComprobarUsuario(email);
		int id_trabajadores=e.getId_trabajadores();
		
		System.out.print("email: "+email+" tiene el id:"+id_trabajadores);
		
		//Actualizar implantacion
		dao6.ActualizarImplantacion(estado, id_trabajadores);
		//Buscar tarea para ese id de trabajadores dentro de CONCURSO_tarea
		List<ImplantacionDTO> tarea_idimplantacion=dao6.BuscarTareaporIdTrabajadores(id_trabajadores);
		List<TareaDTO> tarea=dao12.ListarTareas();
		session.setAttribute("email", email);
		session.setAttribute("tarea_idimplantacion", tarea_idimplantacion);
		session.setAttribute("tarea", tarea);
		
		return "MisTareas";
	}
	@RequestMapping(value="/FinalizarPostventa",method = RequestMethod.POST)
	public String FinalizarPostventa(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session = request.getSession(true);
		
		Cookie[ ] cookies = request.getCookies();
		String cookieName = "emailCookie";
		String email="";
		
		if(cookies!=null) {
			for(Cookie cookie:cookies) {
				if(cookieName.equals(cookie.getName())) {
					email = cookie.getValue();
				}
			}
		}

		String estado=request.getParameter("finalizado");
		System.out.println("El estado es"+estado);
		UsuarioDTO e=dao.ComprobarUsuario(email);
		int id_trabajadores=e.getId_trabajadores();
		
		System.out.print("email: "+email+" tiene el id:"+id_trabajadores);
		
		//Actualizar postventa
		dao8.ActualizarPostventa(estado, id_trabajadores);
		//Buscar tarea para ese id de trabajadores dentro de CONCURSO_tarea
		List<PostventaDTO> post_tarea_id=dao8.BuscarTareaporIdTrabajadores(id_trabajadores);
		List<TareaDTO> tarea=dao12.ListarTareas();
		session.setAttribute("email", email);
		session.setAttribute("post_tarea_id", post_tarea_id);
		session.setAttribute("tarea", tarea);
		
		return "MisTareas";
	}

}
