-- USERS
INSERT INTO users (id, full_name, title, about_me, email, phone)
VALUES
(1,
 'Orhan Türkmenoğlu',
 'Full Stack Java Developer | Java, Spring Boot, Docker, AWS Cloud, Spring Cloud, Databases, & ReactJS',
 'Java ve Spring Boot ile kurumsal backend uygulamaları geliştiren, mikroservis mimarisi, Clean Architecture ve Domain Driven Design konularında uzman bir yazılım geliştiriciyim.
  JWT, OAuth2 ve Keycloak ile güvenli kimlik doğrulama sistemleri kuruyor; Docker ve AWS ile ölçeklenebilir, yüksek erişilebilirlikte çözümler sunuyorum.
  Event-driven mimari ve mesajlaşma sistemleri (Kafka, RabbitMQ) kullanarak asenkron, sağlam sistemler tasarlıyor; unit ve entegrasyon testleriyle kaliteyi garanti altına alıyorum.
  Frontend’de JavaScript ve React ile modern arayüzler oluşturuyor, full-stack yetkinliklerimle projeleri uçtan uca yönetiyorum.
  GitHub’da aktif projeler geliştiriyor, Medium’da teknik yazılar paylaşarak topluluğa katkı sağlıyorum.
  Amacım; teknoloji alanında fark yaratan, sürdürülebilir ve yenilikçi yazılım çözümleri geliştirmek.',
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
  (1, 'finWallet', 'Spring Boot tabanlı dijital cüzdan projesi. JWT refresh token, Redis blacklist ve güvenli işlem yönetimi içerir.', 'https://github.com/orhanturkmenoglu/finWallet', 1),
  (2, 'ecommerce-microservices-springboot', 'Bu proje, servis kaydı, API geçidi, hata toleransı, merkezi yapılandırma ve ödeme yönetimi gibi mikroservis kavramlarını içermektedir. Müşteri, adres, ürün, envanter, sipariş ve ödeme yönetimini kapsar. Jwt Authentication ile güvenli oturum sağlanır ve Stripe + RabbitMQ entegrasyonu ile sipariş ve stok yönetimi yapılır.', 'https://github.com/orhanturkmenoglu/ecommerce-microservices-springboot', 1),
  (3, 'security-jwt-token', 'JWT token tabanlı güvenlik özellikleri geliştirilmiştir: access & refresh token, logout işlemleri, özelleştirilmiş 401/403 yanıtları, method düzeyinde yetkilendirme ve özel authentication provider ile güvenli oturum yönetimi.', 'https://github.com/orhanturkmenoglu/security-jwt-token', 1),
  (4, 'spring-security-mernis-auth', 'Türkiye Cumhuriyeti vatandaşlarının kimlik doğrulamasını sağlamak için MERNIS Web Servisi ile entegre çalışan ve JWT tabanlı güvenli oturum yönetimi sağlayan özel Spring Security yapısı. TCKN, ad, soyad ve doğum yılı ile doğrulama yapılır, ardından JWT token üretilir.', 'https://github.com/orhanturkmenoglu/spring-security-mernis-auth', 1),
  (5, 'money-manager', 'Kullanıcı bazlı gelir-gider yönetimi sağlayan kişisel finans uygulaması. JWT, email aktivasyonu ve profil yönetimi içerir.', 'https://github.com/orhanturkmenoglu/money-manager', 1),
  (6, 'afet-radar', 'AFAD API verilerini işleyen, anlık deprem bildirimleri gönderen gerçek zamanlı afet uyarı sistemi.', 'https://github.com/orhanturkmenoglu/afet-radar', 1),
  (7, 'springboot-portfolio', 'Bu proje, yazılım geliştiricilerin portföy bilgilerini hem REST API hem de web arayüzü üzerinden yönetmesini sağlayan fullstack bir Spring Boot uygulamasıdır. Arayüz kısmı için Thymeleaf şablon motoru kullanılmıştır.', 'https://github.com/orhanturkmenoglu/springboot-portfolio', 1),
  (8, 'gosterim360', 'GÖSTERİM360, sinema salonları için uçtan uca dijital biletleme deneyimi sunar. Kullanıcı dostu arayüz, hızlı işlem süreçleri, güvenli geçiş teknolojileri ve yapay zeka destekli koltuk önerileri içerir.', 'https://github.com/orhanturkmenoglu/gosterim360', 1),
  (9, 'securepay-qr', 'Stripe ile entegre, gerçek zamanlı ödeme takibi ve otomatik QR kod üretimi sağlayan, güvenli ve ölçeklenebilir Spring Boot tabanlı ödeme platformu.', 'https://github.com/orhanturkmenoglu/securepay-qr', 1),
  (10, 'ollama-cv-insight', 'AI destekli PDF özgeçmiş analiz servisi. Spring Boot ve Ollama TinyLLaMA modeli ile geliştirilmiştir.', 'https://github.com/orhanturkmenoglu/ollama-cv-insight', 1),
  (11, 'aws-sns-email-service', 'Spring Boot ile AWS SNS üzerinden e-posta gönderimi yapan servis. Medium’da teknik yazısı paylaşılmıştır.', 'https://github.com/orhanturkmenoglu/aws-sns-email-service', 1),
  (12, 'react-altin-radar', 'Altın Radar uygulaması. Harem Altın firmasına ait bilgileri ve kıymetli metal fiyatlarını gösterir, kullanıcı dostu bir arayüz sunar.', 'https://github.com/orhanturkmenoglu/react-altin-radar', 1),
  (13, 'foodies', 'React tabanlı yiyecek sipariş uygulaması.', 'https://github.com/orhanturkmenoglu/foodies', 1),
  (14, 'react-coffe-finder', 'React ile geliştirilmiş kahve bulma uygulaması.', 'https://github.com/orhanturkmenoglu/react-coffe-finder', 1)
ON CONFLICT (id) DO NOTHING;

-- SOCIAL LINKS
INSERT INTO social_links (id, title, url, icon, user_id) VALUES
  (1, 'LinkedIn', 'https://linkedin.com/in/orhanturkmenoglu', '/linkedin.svg', 1),
  (2, 'GitHub', 'https://github.com/orhanturkmenoglu', '/github.svg', 1),
  (3, 'Medium', 'https://medium.com/@orhanturkmenoglu', '/medium.svg', 1)
ON CONFLICT (id) DO NOTHING;
