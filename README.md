# Certificates-2026 – مدرسة أبو القاسم الزهراوي

نظام استلام الشهادات الإلكترونية عبر GitHub Pages.

---

## هيكل المشروع

```
/
├── index.html          ← الصفحة الرئيسية (لا تعدّلها إلا للتخصيص)
├── students.json       ← بيانات الطلاب ← هنا تضيف / تعدّل
├── assets/
│   └── logo.png        ← ضع شعار المدرسة هنا (80×80 px)
└── pdfs/
    ├── 5-1/            ← ملفات الشهادات PDF للشعبة 5-1
    ├── 5-2/
    ├── 6-1/
    ├── 6-2/
    ├── 7-1/
    ├── 7-2/
    ├── 8-1/
    ├── 8-2/
    ├── 9-1/
    └── 9-2/
```

---

## كيفية رفع الشهادات

1. اسمّ كل ملف PDF باسم **الرقم المدني** للطالب، مثال: `28598318.pdf`
2. ضعه في مجلد الشعبة الصحيحة، مثال: `pdfs/5-1/28598318.pdf`
3. أضف سجل الطالب في `students.json`:

```json
{
  "civil_id": "28598318",
  "student_name": "اسم الطالب كاملًا",
  "grade": "الخامس",
  "class": "5-1",
  "pdf": "pdfs/5-1/28598318.pdf"
}
```

---

## رفع المشروع على GitHub Pages

```bash
# 1. انسخ الريبو محليًا (مرة واحدة فقط)
git clone https://github.com/sc1561/Certificates-2026.git
cd Certificates-2026

# 2. انسخ ملفات المشروع هنا، ثم:
git add .
git commit -m "initial setup"
git push origin main

# 3. فعّل GitHub Pages من:
#    Settings → Pages → Source → Deploy from branch → main → / (root)
```

بعد بضع ثوانٍ سيصبح الموقع متاحًا على:
```
https://sc1561.github.io/Certificates-2026/
```

---

## إضافة طلاب جدد لاحقًا

```bash
# بعد إضافة PDF ووضع بيانات الطالب في students.json:
git add pdfs/ students.json
git commit -m "add student certificates – batch 2"
git push origin main
```

---

## ملاحظات أمنية

- الملفات مرئية لمن يعرف المسار المباشر — الحماية الأساسية هي البحث بالرقم المدني.
- لا تضع بيانات حساسة إضافية في `students.json`.
- إذا أردت حماية أقوى مستقبلًا، فكّر في Cloudflare Access أو نظام تسجيل دخول.
