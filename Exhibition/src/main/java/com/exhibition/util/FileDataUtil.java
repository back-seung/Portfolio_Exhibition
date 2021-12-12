package com.exhibition.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import net.coobird.thumbnailator.Thumbnails;

@Controller
public class FileDataUtil {

	// 첨부파일 업로드 경로 변수값으로 가져옴 servlet-context.xml
	@Resource(name = "uploadPath")
	private String uploadPath; // 실제경로
	static final int THUMB_WIDTH = 1080;
	static final int THUMB_HEIGHT = 1080;

	/**
	 * 파일 업로드 메서드(공통)
	 * 
	 * @throws IOException
	 */
	public String fileUpload(MultipartFile file) throws IOException {
		String originalName = file.getOriginalFilename();// jsp에서 전송받은 파일의 이름 가져옴
		UUID uid = UUID.randomUUID();// 랜덤문자 구하기
		String saveName = uid.toString() + "." + originalName.split("\\.")[1];// 한글 파일명 처리 때문에...
		String r_FileName = saveName;
		String thumbFileName = "t_" + saveName;
		byte[] fileData = file.getBytes();
		File target = new File(uploadPath, saveName);
		File thumb = new File(uploadPath, thumbFileName);
		FileCopyUtils.copy(fileData, target);
		Thumbnails.of(target).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumb);
		return r_FileName;
	}

	@RequestMapping(value = "/download", method = RequestMethod.GET)
	@ResponseBody
	public FileSystemResource fileDownload(@RequestParam("fileName") String fileName, HttpServletResponse response) {
		File file = new File(uploadPath + "/" + fileName);
		response.setContentType("application/download; utf-8");
		response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
		return new FileSystemResource(file);
	}

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

}