package com.example.spring.boot.portfolio.controller;

import com.example.spring.boot.portfolio.entity.Project;
import com.example.spring.boot.portfolio.entity.Skill;
import com.example.spring.boot.portfolio.entity.User;
import com.example.spring.boot.portfolio.entity.SocialLink;
import com.example.spring.boot.portfolio.service.PortfolioService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.parameters.RequestBody;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class ApiController {
    private final PortfolioService portfolioService;

    @Operation(summary = "Tüm yetenekleri getir")
    @GetMapping("/skills")
    public List<Skill> getSkills() {
        var user = portfolioService.getUser();
        if (user == null) return List.of();
        return portfolioService.getSkills(user.getId());
    }

    @Operation(summary = "Yeni yetenek ekle", requestBody = @RequestBody(content = @Content(schema = @Schema(implementation = Skill.class))))
    @ApiResponse(responseCode = "200", description = "Başarıyla eklendi")
    @PostMapping("/skills")
    public ResponseEntity<Skill> addSkill(@org.springframework.web.bind.annotation.RequestBody Skill skill) {
        var user = portfolioService.getUser();
        if (user == null) return ResponseEntity.badRequest().build();
        skill.setUser(user);
        return ResponseEntity.ok(portfolioService.saveSkill(skill));
    }

    @Operation(summary = "Tüm projeleri getir")
    @GetMapping("/projects")
    public List<Project> getProjects() {
        var user = portfolioService.getUser();
        if (user == null) return List.of();
        return portfolioService.getProjects(user.getId());
    }

    @Operation(summary = "Yeni proje ekle", requestBody = @RequestBody(content = @Content(schema = @Schema(implementation = Project.class))))
    @ApiResponse(responseCode = "200", description = "Başarıyla eklendi")
    @PostMapping("/projects")
    public ResponseEntity<Project> addProject(@org.springframework.web.bind.annotation.RequestBody Project project) {
        var user = portfolioService.getUser();
        if (user == null) return ResponseEntity.badRequest().build();
        project.setUser(user);
        return ResponseEntity.ok(portfolioService.saveProject(project));
    }

    @Operation(summary = "Kullanıcı bilgisini getir")
    @GetMapping("/user")
    public User getUser() {
        return portfolioService.getUser();
    }

    @Operation(summary = "Yeni kullanıcı ekle", requestBody = @RequestBody(content = @Content(schema = @Schema(implementation = User.class))))
    @ApiResponse(responseCode = "200", description = "Başarıyla eklendi")
    @PostMapping("/user")
    public ResponseEntity<User> addUser(@org.springframework.web.bind.annotation.RequestBody User user) {
        return ResponseEntity.ok(portfolioService.saveUser(user));
    }

    @Operation(summary = "Tüm sosyal medya linklerini getir")
    @GetMapping("/social-links")
    public List<SocialLink> getSocialLinks() {
        var user = portfolioService.getUser();
        if (user == null) return List.of();
        return portfolioService.getSocialLinks(user.getId());
    }

    @Operation(summary = "Yeni sosyal medya linki ekle", requestBody = @RequestBody(content = @Content(schema = @Schema(implementation = SocialLink.class))))
    @ApiResponse(responseCode = "200", description = "Başarıyla eklendi")
    @PostMapping("/social-links")
    public ResponseEntity<SocialLink> addSocialLink(@org.springframework.web.bind.annotation.RequestBody SocialLink socialLink) {
        var user = portfolioService.getUser();
        if (user == null) return ResponseEntity.badRequest().build();
        socialLink.setUser(user);
        return ResponseEntity.ok(portfolioService.saveSocialLink(socialLink));
    }
} 