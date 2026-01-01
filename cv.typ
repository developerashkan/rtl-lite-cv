#import "template.typ": resume, section, entry

#show: body => resume(
  name: "نام شما",
  location: "تهران، ایران",
  phone: "+98 912 345 6789",
  email: "yourname@email.com",
  github: "github.com/username",
  body
)

#section("خلاصه تجربیات")
توسعه‌دهنده فول‌استک با بیش از ۵ سال تجربه در طراحی سیستم‌های مقیاس‌پذیر. مسلط به پایتون، فریم‌ورک جنگو و محیط‌های مبتنی بر ابری.

#section("تجربیات کاری")

#entry(
  "توسعه‌دهنده ارشد",
  "شرکت دانش‌بنیان فناوران",
  "۱۴۰۱ — اکنون",
  "رهبری تیم فنی در طراحی دیتابیس و بهینه‌سازی کوئری‌های پیچیده که منجر به افزایش سرعت ۳۰ درصدی سامانه شد."
)

#entry(
  "برنامه‌نویس پایتون",
  "استارتاپ نوین",
  "۱۳۹۹ — ۱۴۰۱",
  "توسعه APIهای سامانه با استفاده از FastAPI و پیاده‌سازی تست‌های واحد (Unit Testing)."
)

#section("مهارت‌ها")
- *زبان‌ها:* Python, JavaScript, SQL, Bash
- *تکنولوژی‌ها:* Docker, Git, PostgreSQL, Redis, Linux