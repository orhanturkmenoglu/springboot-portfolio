-- User
INSERT INTO "user" (id, full_name, title, about_me, email, phone) VALUES
  (1, 'Ahmet Yılmaz', 'Full Stack Developer & Yazılım Mühendisi', 'Merhaba! Ben yazılım geliştirmeye tutkuyla bağlı bir geliştiriciyim. Modern web teknolojileriyle projeler geliştiriyorum.', 'ahmet@mail.com', '+90 555 555 55 55');

-- Skill
INSERT INTO skill (id, name, user_id) VALUES
  (1, 'Java', 1),
  (2, 'Spring Boot', 1),
  (3, 'React', 1);

-- Project
INSERT INTO project (id, name, description, url, user_id) VALUES
  (1, 'Kişisel Blog', 'Kendi blog platformum. Modern web uygulaması.', 'https://github.com/ahmet/blog', 1),
  (2, 'API Servisi', 'RESTful API geliştirme örneği.', 'https://github.com/ahmet/api', 1),
  (3, 'Mobil Uygulama', 'Flutter ile geliştirilmiş mobil uygulama.', 'https://github.com/ahmet/mobile', 1);

-- SocialLink
INSERT INTO social_link (id, title, url, icon, user_id) VALUES
  (1, 'LinkedIn', 'https://linkedin.com/in/ahmet', '/linkedin.svg', 1),
  (2, 'GitHub', 'https://github.com/ahmet', '/github.svg', 1),
  (3, 'Twitter', 'https://twitter.com/ahmet', '/twitter.svg', 1),
  (4, 'Medium', 'https://medium.com/@ahmet', '/medium.svg', 1); 