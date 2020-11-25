package com.example1.practice1.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.example1.practice1.domain.CommentDTO;
import com.example1.practice1.mapper.CommentMapper;

@Service("com.example1.practice1.service.CommentService")
public class CommentService {
	
	@Resource(name="com.example1.practice1.mapper.CommentMapper")
	CommentMapper mCommentMapper;
	
	//댓글등록
	public int commentInsertService(CommentDTO comment) throws Exception{
		return mCommentMapper.commentInsert(comment);
	}
	//댓글 리스트
	public List<CommentDTO> commentListService(int replyno) throws Exception {
		return mCommentMapper.commentList(replyno);
	}
	//댓글 수정
	public int commentUpdateService(CommentDTO comment) throws Exception{
		 return mCommentMapper.commentUpdate(comment);
	}
	//댓글 삭제
	public int commentDeleteService(int replyno) throws Exception{
		return mCommentMapper.commentDelete(replyno);
	}
	

}
