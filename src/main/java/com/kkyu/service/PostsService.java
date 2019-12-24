package com.kkyu.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kkyu.dto.PostsMainResponseDto;
import com.kkyu.model.PostsRepository;
import com.kkyu.model.PostsSaveRequestDto;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class PostsService {
    private PostsRepository postsRepository;

    @Transactional
    public Long save(PostsSaveRequestDto dto){
        return postsRepository.save(dto.toEntity()).getId();
    }
    
    @Transactional(readOnly = true) //readOnly = true를 주면 트랜잭션 범위는 유지하되, 조회 기능만 남겨두어 속도가 개선 됨
    public List<PostsMainResponseDto> findAllDesc() {
        return postsRepository.findAllByOrderByIdDesc()
                .map(PostsMainResponseDto::new)
                .collect(Collectors.toList());
    }
}