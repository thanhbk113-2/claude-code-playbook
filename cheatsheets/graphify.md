# Graphify Cheatsheet

Công cụ trực quan hóa cấu trúc dự án và quan hệ mã nguồn thành đồ thị tri thức (Knowledge Graph) sử dụng AST parser.

## Mục đích
- Quét toàn bộ source code (Kotlin, Java, Python, TypeScript, C++,...) để bóc tách:
  - File, Class, Method, Field, Function.
  - Quan hệ gọi hàm (calls), kế thừa (extends/implements), phụ thuộc (imports).
- Nhóm các thành phần thành các cụm cộng đồng (Communities) và xuất báo cáo trực quan dạng web tương tác HTML.

---

## Cách sử dụng

### 1. Kích hoạt tự động
- Gõ `/graphify` trong Claude Code CLI.
- AI sẽ tự động đọc `~/.claude/skills/graphify/SKILL.md` và chạy phân tích.

### 2. Lệnh CLI trực tiếp
```bash
# Phân tích dự án hiện tại và xuất đồ thị
graphify .

# Phân tích và chỉ định thư mục xuất đồ thị
graphify . --output graphify-out/

# Cập nhật đồ thị tăng dần khi code thay đổi (incremental update)
graphify . --incremental
```

---

## Cấu trúc thư mục đầu ra (`graphify-out/`)
- `graph.json`: Dữ liệu đồ thị dạng nút (nodes) và cạnh (edges).
- `index.html`: Bản đồ trực quan tương tác chạy trên trình duyệt (dùng D3.js hoặc Vis.js).
- `communities.json`: Phân tích cụm chức năng và mức độ kết dính mã nguồn.

*Lưu ý:* Thêm `graphify-out/` và `.graphify/` vào `.gitignore` để không làm nặng git repository.
