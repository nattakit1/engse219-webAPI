# engse219-webAPI
# 67543210055-9 ณัฐกิตต์ แก้วคำยศ

# สร้างฐานข้อมูล MySQL ขึ้นมาใหม่
<img width="136" height="71" alt="image" src="https://github.com/user-attachments/assets/f0461937-bac6-4ed9-b2cb-acb162be5432" />

# สร้างตารางข้อมูลสินค้า (products) เป็นสินค้าอะไรก็ได้ ระบุคอลัมน์ตามรายละเอียดของสินค้าที่เลือกมา
-เพิ่มข้อมูลสินค้าลงในตาราง 20-30 รายการ
<img width="1126" height="788" alt="image" src="https://github.com/user-attachments/assets/640e2d20-16ab-4720-9f42-635fa0dd48b5" />

-จากนั้นสร้าง web api ด้วยภาษาที่ Xampp รองรับ
<img width="735" height="269" alt="image" src="https://github.com/user-attachments/assets/10fdbd2b-cd06-442d-b9b3-8f8dbe147fea" />
<img width="1333" height="888" alt="image" src="https://github.com/user-attachments/assets/3bdccb1e-d51f-48aa-a297-f10c7688118d" />

# หน้าเว็บ
http://localhost/api/products.php
<img width="1907" height="886" alt="image" src="https://github.com/user-attachments/assets/3f1cc735-e79b-4b88-8c7c-979000db9fc6" />


# PostmanTest

# SELECT (อ่าน/ค้นหา)
GET /api/products.php

<img width="826" height="548" alt="image" src="https://github.com/user-attachments/assets/ef46936d-ac50-4242-ab07-49c873b0a1cb" />

# -
http://localhost/api/products.php?id=4

<img width="452" height="468" alt="image" src="https://github.com/user-attachments/assets/70c5f60d-4f0f-498f-ad3a-1aa0f6a74dfa" />
<img width="825" height="493" alt="image" src="https://github.com/user-attachments/assets/bb7ae72d-f132-4672-9ab7-4d397d03f3f8" />



# INSERT (สร้างใหม่)
POST /api/products.php

<img width="833" height="414" alt="image" src="https://github.com/user-attachments/assets/159a07b1-6ebe-4db5-a9bc-a6ec5286167c" />


# เพิ่มข้อมูลใน Body raw
Request Body (JSON)
{
  "name": "Airpod Pro",
  "description": "หูงฟังตัดเสียงรบกวน ของ Apple",
  "price": 4500,
  "category": "Headphones",
  "stock": 5,
  "image_url": "https://example.com/airpod.jpg"
}

<img width="832" height="395" alt="image" src="https://github.com/user-attachments/assets/cbe515e1-f11f-4521-befc-a60c742005b8" />

# ผลลัพธ์ สินค้า airpod ที่เพิ่มมาให้ จะอยู่ใน id 21
http://localhost/api/products.php?id=21

<img width="444" height="990" alt="image" src="https://github.com/user-attachments/assets/738912e2-aa23-4bb3-90ec-9d1bb648e779" />
<img width="428" height="274" alt="image" src="https://github.com/user-attachments/assets/7afb8731-a0bc-4193-8edb-037a16b837cb" />




# UPDATE (แก้ไข)
PUT/PATCH /api/products.php?id=2

http://localhost/api/products.php?id=2

<img width="424" height="286" alt="image" src="https://github.com/user-attachments/assets/a1312ff5-44ca-44bc-913f-6c27dbf1d209" />

---
<img width="833" height="457" alt="image" src="https://github.com/user-attachments/assets/b2effb42-ac81-493c-ad9b-c1848b2f448c" />
<img width="392" height="272" alt="image" src="https://github.com/user-attachments/assets/eb3984c4-9d50-4291-b06d-8647c6551bba" />



# DELETE (ลบ)
DELETE /api/products.php?id=3

http://localhost/api/products.php?id=3

<img width="407" height="293" alt="image" src="https://github.com/user-attachments/assets/53b167e7-2064-4384-9649-b4e9eb686ae2" />

<img width="828" height="384" alt="image" src="https://github.com/user-attachments/assets/f66b580c-bad1-4387-9ddd-4953796ac003" />

<img width="404" height="147" alt="image" src="https://github.com/user-attachments/assets/e45501b8-45eb-423f-a6dd-08b0727ec811" />

# ค่าจะกลายเป็น Null

# ฐานข้อมูลหลังอัพเดท
<img width="1179" height="809" alt="image" src="https://github.com/user-attachments/assets/e6ef6a46-ad1b-4b38-a44f-a7a92a8b450d" />
