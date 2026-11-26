# Graphify Cheatsheet

Công cụ trực quan hóa cấu trúc dự án và quan hệ mã nguồn thành đồ thị tri thức (Knowledge Graph) sử dụng AST parser.

## Cài đặt

Mở **Claude Desktop → tab Code** (hoặc Claude Code, Codex, RevidAPI Code), chọn thư mục dự án, dán **một câu** này là xong. AI tự tải về và gắn skill, không cần biết lệnh. Chạy bằng API RevidAPI như bình thường:

```
Cài giúp tôi Graphify (https://github.com/Graphify-Labs/graphify) cho mọi dự án, kể cả tab Code của Claude Desktop. Ưu tiên cách tác giả khuyên trong README (plugin nếu có); không có thì tải repo về (không có git thì tải zip) và chép các thư mục có SKILL.md vào ~/.claude/skills. Xoá thư mục tạm sau khi xong. Liệt kê skill đã cài và giải thích ngắn bằng tiếng Việt cách tôi dùng.
```

Quen dùng Terminal thì chạy lệnh này trong thư mục dự án (máy cần Python):

```
pipx install graphifyy && graphify install
```

### Sau khi cài

Mở **phiên mới** (Claude Desktop: mở tab Code mới) thì Graphify mới có hiệu lực. Cứ nói việc như bình thường, Claude tự dùng khi hợp.

Lưu ý: Để xem sơ đồ: trong tab Code gõ `/graphify .` rồi chờ quét xong (lần đầu tốn credit vì phải đọc cả dự án). Mở file `graphify-out/graph.html` bằng trình duyệt để xem sơ đồ, bấm từng ô hoặc tìm kiếm được. Sau đó cứ hỏi Claude bình thường, nó tra sơ đồ thay vì đọc lại cả dự án.

### Tắt hoặc gỡ ra

Dán câu này vào cùng chỗ đã cài, AI tự gỡ sạch:

```
Gỡ Graphify (https://github.com/Graphify-Labs/graphify) ra khỏi máy: nếu cài dạng plugin thì uninstall plugin, nếu chép vào ~/.claude/skills hoặc .claude/skills thì xoá đúng các thư mục skill của nó, gỡ cả MCP/hook nếu có. Không xoá thứ gì khác. Xong báo tôi đã gỡ những gì.
```

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
