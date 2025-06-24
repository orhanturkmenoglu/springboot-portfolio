package com.example.spring.boot.portfolio.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "social_links")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SocialLink {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String url;
    private String icon;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
} 