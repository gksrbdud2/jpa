package com.kkyu.model;

import java.util.stream.Stream;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PostsRepository extends JpaRepository<Posts, Long>{
    
    Stream<Posts> findAllByOrderByIdDesc ();
}