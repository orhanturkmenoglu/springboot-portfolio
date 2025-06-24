package com.example.spring.boot.portfolio.controller;

import com.example.spring.boot.portfolio.entity.User;
import com.example.spring.boot.portfolio.entity.Skill;
import com.example.spring.boot.portfolio.entity.Project;
import com.example.spring.boot.portfolio.entity.SocialLink;
import com.example.spring.boot.portfolio.service.PortfolioService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class PortfolioController {
    private final PortfolioService portfolioService;

    @GetMapping("/")
    public String index(Model model) {
        User user = portfolioService.getUser();
        if (user == null) {
            model.addAttribute("error", "Kullanıcı bulunamadı.");
            return "index";
        }
        List<Skill> skills = portfolioService.getSkills(user.getId());
        List<Project> projects = portfolioService.getProjects(user.getId());
        List<SocialLink> socialLinks = portfolioService.getSocialLinks(user.getId());

        model.addAttribute("fullName", user.getFullName());
        model.addAttribute("title", user.getTitle());
        model.addAttribute("aboutMe", user.getAboutMe());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("phone", user.getPhone());
        model.addAttribute("skills", skills.stream().map(Skill::getName).toList());
        model.addAttribute("projects", projects.stream().map(p -> java.util.Map.of(
                "name", p.getName(),
                "description", p.getDescription(),
                "url", p.getUrl()
        )).toList());
        model.addAttribute("socialLinks", socialLinks.stream().map(s -> java.util.Map.of(
                "title", s.getTitle(),
                "url", s.getUrl(),
                "icon", s.getIcon()
        )).toList());
        return "index";
    }
} 