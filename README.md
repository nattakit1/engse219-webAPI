# engse219-webAPI

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
POST /api/appliances

# UPDATE (แก้ไข)
PUT/PATCH /api/appliances/{id}

# DELETE (ลบ)
DELETE /api/appliances/{id}
