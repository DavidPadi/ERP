package com.org.Controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadFileService {
	private String upload_folder="C://Users//PZPORT1//eclipse-workspace//ERP//src//main//webapp//resources//img//";
	
	public void saveFile(MultipartFile file) throws IOException {
		if(!file.isEmpty()) {
			byte[] bytes=file.getBytes();
			Path path=Paths.get(upload_folder + file.getOriginalFilename());
			Files.write(path, bytes);
			
			obtenFoto(path, upload_folder);
		} 
	}
	private String obtenFoto(Path path, String upload_folder) {
		return upload_folder+path.getFileName();
		
	}
	public String getRuta() {
		return upload_folder;
	}

}
