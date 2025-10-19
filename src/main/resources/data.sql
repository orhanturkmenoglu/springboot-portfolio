-- USERS
INSERT INTO users (id, full_name, title, about_me, email, phone)
VALUES
(1,
 'Orhan Türkmenoğlu',
 'Full Stack Java Developer | Java, Spring Boot, Docker, AWS Cloud, Spring Cloud, Databases, & ReactJS',
 'Java ve Spring Boot ile kurumsal backend uygulamaları geliştiren, mikroservis mimarisi, Clean Architecture ve Domain Driven Design konularında uzman bir yazılım geliştiriciyim.\nJWT, OAuth2 ve Keycloak ile güvenli kimlik doğrulama sistemleri kuruyor; Docker ve AWS ile ölçeklenebilir, yüksek erişilebilirlikte çözümler sunuyorum.\nEvent-driven mimari ve mesajlaşma sistemleri (Kafka, RabbitMQ) kullanarak asenkron, sağlam sistemler tasarlıyor; unit ve entegrasyon testleriyle kaliteyi garanti altına alıyorum.\nFrontend’de JavaScript ve React ile modern arayüzler oluşturuyor, full-stack yetkinliklerimle projeleri uçtan uca yönetiyorum.\nGitHub’da aktif projeler geliştiriyor, Medium’da teknik yazılar paylaşarak topluluğa katkı sağlıyorum.\nAmacım; teknoloji alanında fark yaratan, sürdürülebilir ve yenilikçi yazılım çözümleri geliştirmek.',
 'orhantrkmn749@mail.com',
 '05417679626')
ON CONFLICT (id) DO NOTHING;

-- SKILLS
INSERT INTO skills (id, name, user_id) VALUES
  (1, 'Java', 1),
  (2, 'Spring Boot', 1),
  (3, 'Spring Security, JWT, OAuth2', 1),
  (4, 'Keycloak Integration', 1),
  (5, 'Docker & CI/CD', 1),
  (6, 'AWS (S3, SNS, Secrets Manager)', 1),
  (7, 'Kafka & RabbitMQ', 1),
  (8, 'Clean Architecture & DDD', 1),
  (9, 'Microservices Architecture', 1),
  (10, 'Unit & Integration Testing (JUnit, Mockito)', 1),
  (11, 'React.js', 1)
ON CONFLICT (id) DO NOTHING;

-- PROJECTS
INSERT INTO projects (id, name, description, url, user_id) VALUES
  (1, 'finWallet', 'Spring Boot tabanlı dijital cüzdan projesi. JWT refresh token, Redis blacklist ve güvenli işlem yönetimi içeriyor.', 'https://github.com/orhanturkmenoglu/finWallet', 1),
  (2, 'spring-security-mernis-auth', 'TCKN doğrulaması yapan özel Spring Security Authentication Provider ve Mernis entegrasyonu.', 'https://github.com/orhanturkmenoglu/spring-security-mernis-auth', 1),
  (3, 'afet-radar', 'AFAD API verilerini işleyen, anlık deprem bildirimleri gönderen gerçek zamanlı afet uyarı sistemi.', 'https://github.com/orhanturkmenoglu/afet-radar', 1),
  (4, 'aws-sns-email-service', 'Spring Boot ile AWS SNS üzerinden e-posta gönderimi yapan servis. Medium’da teknik yazısı paylaşılmıştır.', 'https://github.com/orhanturkmenoglu/aws-sns-email-service', 1),
  (5, 'money-manager', 'Kullanıcı bazlı gelir-gider yönetimi sağlayan kişisel finans uygulaması. JWT, email aktivasyonu ve profil yönetimi içeriyor.', 'https://github.com/orhanturkmenoglu/money-manager', 1)
ON CONFLICT (id) DO NOTHING;

-- SOCIAL LINKS
INSERT INTO social_links (id, title, url, icon, user_id) VALUES
  (1, 'LinkedIn', 'https://linkedin.com/in/orhanturkmenoglu', '/linkedin.svg', 1),
  (2, 'GitHub', 'https://github.com/orhanturkmenoglu', '/github.svg', 1),
  (3, 'Medium', 'https://medium.com/@orhanturkmenoglu', '/medium.svg', 1),
  (4, 'Twitter (X)', 'https://x.com/orhanturkmenoglu', '/twitter.svg', 1)
ON CONFLICT (id) DO NOTHING;

