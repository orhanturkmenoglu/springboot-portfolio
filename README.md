# 🧑‍💻 Spring Boot Portfolio – Fullstack (Thymeleaf + Spring Boot)

Bu proje, yazılım geliştiricilerin portföy bilgilerini hem **REST API** hem de **web arayüzü** üzerinden yönetmesini sağlayan **fullstack bir Spring Boot uygulamasıdır**. Arayüz kısmı için Thymeleaf şablon motoru kullanılmıştır.

## 🎯 Amaç

Portföyünüzü (kişisel bilgiler, beceriler, projeler ve sosyal medya linkleri) veritabanı üzerinden yönetebileceğiniz; hem API olarak hem de kullanıcı dostu bir web arayüzü ile sunabileceğiniz entegre bir sistem sağlamaktır.

---

## 🚀 Özellikler

- 👤 Kullanıcı Bilgileri (Ad, unvan, hakkında, iletişim)
- 🧠 Yetenekler / Beceriler (Java, Spring, ReactJS vs.)
- 📁 Projeler (Proje adı, açıklama, GitHub linki)
- 🔗 Sosyal Medya Linkleri (GitHub, LinkedIn, Twitter vs.)
- 🌐 Web Arayüzü (Thymeleaf ile)
- 📦 RESTful API mimarisi
- ✅ Spring Data JPA + Hibernate
- 🖼️ HTML5 + Bootstrap + Thymeleaf ile modern UI

---

## 🛠️ Kullanılan Teknolojiler

| Teknoloji     | Açıklama                        |
|---------------|---------------------------------|
| Java 17+      | Uygulamanın ana programlama dili |
| Spring Boot   | Uygulama çatısı                |
| Spring Data JPA | ORM katmanı (Hibernate)       |
| Thymeleaf     | Server-side template motoru     |
| Bootstrap     | UI için responsive yapı          |
| PostgreSQL (veya H2) | Veritabanı             |

---

## 🔍 API ve Web Arayüzü

| Katman       | Adres                                 |
|--------------|----------------------------------------|
| REST API     | `http://localhost:8080/api/**`         |
| Web Arayüzü  | `http://localhost:8080/`               |
| Örnek Sayfa  | `/skills`, `/projects`, `/about`       |

---

## 🧪 Örnek Kullanımlar

### Kullanıcı Bilgisi Ekleme (API)
```bash
POST /api/user

{
  "fullName": "Orhan Türkmenoğlu",
  "title": "Full Stack Java Developer",
  "email": "orhantrkmn749@gmail.com",
  "phone": "05417679626",
  "aboutMe": "Kurumsal uygulamalarda uzman bir yazılımcıyım..."
}

## 👨‍💻 Geliştirici
Orhan Türkmenoğlu
📧 orhantrkmn749@gmail.com
🔗 GitHub • LinkedIn
