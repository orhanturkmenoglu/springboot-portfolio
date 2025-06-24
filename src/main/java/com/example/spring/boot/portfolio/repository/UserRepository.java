package com.example.spring.boot.portfolio.repository;

import com.example.spring.boot.portfolio.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
} 