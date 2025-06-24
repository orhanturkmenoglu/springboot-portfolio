package com.example.spring.boot.portfolio.repository;

import com.example.spring.boot.portfolio.entity.Project;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ProjectRepository extends JpaRepository<Project, Long> {
    List<Project> findByUserId(Long userId);
} 