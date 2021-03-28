package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Photo;

@Mapper
public interface PhotosDao {
	public int insert(Photo photo);
	public int update(Photo photo);
	public int deleteByPhotoid(int photoId);
}
