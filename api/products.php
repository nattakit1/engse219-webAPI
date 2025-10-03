<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type");

// เชื่อมต่อฐานข้อมูล
$mysqli = new mysqli("localhost", "root", "", "shopdb");

if ($mysqli->connect_errno) {
    http_response_code(500);
    echo json_encode(["error" => "Failed to connect DB"]);
    exit();
}

// อ่าน method
$method = $_SERVER['REQUEST_METHOD'];
$id = $_GET['id'] ?? null;

switch ($method) {
    case 'GET':
        if ($id) {
            // ดึงสินค้า 1 รายการ
            $stmt = $mysqli->prepare("SELECT * FROM products WHERE id=?");
            $stmt->bind_param("i", $id);
            $stmt->execute();
            $result = $stmt->get_result()->fetch_assoc();
            echo json_encode($result);
        } else {
            // ดึงสินค้าทั้งหมด
            $result = $mysqli->query("SELECT * FROM products");
            $products = [];
            while ($row = $result->fetch_assoc()) {
                $products[] = $row;
            }
            echo json_encode($products);
        }
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"), true);
        $stmt = $mysqli->prepare("INSERT INTO products (name, description, price, category, stock, image_url) VALUES (?,?,?,?,?,?)");
        $stmt->bind_param("ssdsis", $data['name'], $data['description'], $data['price'], $data['category'], $data['stock'], $data['image_url']);
        $stmt->execute();
        echo json_encode(["success" => true, "id" => $stmt->insert_id]);
        break;

    case 'PUT':
        if (!$id) { http_response_code(400); echo json_encode(["error" => "Missing id"]); exit(); }
        $data = json_decode(file_get_contents("php://input"), true);
        $stmt = $mysqli->prepare("UPDATE products SET name=?, description=?, price=?, category=?, stock=?, image_url=? WHERE id=?");
        $stmt->bind_param("ssdsisi", $data['name'], $data['description'], $data['price'], $data['category'], $data['stock'], $data['image_url'], $id);
        $stmt->execute();
        echo json_encode(["success" => true]);
        break;

    case 'DELETE':
        if (!$id) { http_response_code(400); echo json_encode(["error" => "Missing id"]); exit(); }
        $stmt = $mysqli->prepare("DELETE FROM products WHERE id=?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        echo json_encode(["success" => true]);
        break;

    default:
        http_response_code(405);
        echo json_encode(["error" => "Method not allowed"]);
        break;
}
