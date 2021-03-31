package com.mycompany.webapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.PhotosDao;
import com.mycompany.webapp.dao.ReviewDao;
import com.mycompany.webapp.dto.Photo;

@Service
public class PhotosService {
	@Autowired
	private PhotosDao photosDao;
	
	// photo dto에 pid와 photorole을 넣으면 해당에 맞는 사진의 url 리턴
	public String GetProductPhotoUrl(Photo photo) {
		String url= "${pageContext.request.contextPath}/WEB-INF/Photos/ProductPhotos/";
		
		//DB에서 해당 pid와 photorole에 맞는 savename 가져오기
		String savename=photosDao.selectname(photo).getPhotoSname();
		url+=savename;
		return url;
	}

	public void createPhoto(Photo p) {
		// TODO Auto-generated method stub
		photosDao.insert(p);
		
	}
	

}
