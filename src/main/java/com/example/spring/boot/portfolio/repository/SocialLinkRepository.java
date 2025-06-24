package com.example.spring.boot.portfolio.repository;

import com.example.spring.boot.portfolio.entity.SocialLink;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface SocialLinkRepository extends JpaRepository<SocialLink, Long> {
    List<SocialLink> findByUserId(Long userId);
} 