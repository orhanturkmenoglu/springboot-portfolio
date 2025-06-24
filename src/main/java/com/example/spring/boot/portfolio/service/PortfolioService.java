package com.example.spring.boot.portfolio.service;

import com.example.spring.boot.portfolio.entity.*;
import com.example.spring.boot.portfolio.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PortfolioService {
    private final UserRepository userRepository;
    private final SkillRepository skillRepository;
    private final ProjectRepository projectRepository;
    private final SocialLinkRepository socialLinkRepository;

    public User getUser() {
        // Şimdilik ilk kullanıcıyı döndür (tek kullanıcı için)
        return userRepository.findAll().
                stream().findFirst()
                .orElse(null);
    }

    public List<Skill> getSkills(Long userId) {
        return skillRepository.findByUserId(userId);
    }

    public List<Project> getProjects(Long userId) {
        return projectRepository.findByUserId(userId);
    }

    public List<SocialLink> getSocialLinks(Long userId) {
        return socialLinkRepository.findByUserId(userId);
    }

    public User saveUser(User user) {
        return userRepository.save(user);
    }

    public Skill saveSkill(Skill skill) {
        return skillRepository.save(skill);
    }

    public Project saveProject(Project project) {
        return projectRepository.save(project);
    }

    public SocialLink saveSocialLink(SocialLink socialLink) {
        return socialLinkRepository.save(socialLink);
    }
} 