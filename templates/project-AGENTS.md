# AGENTS.md — [Tên Dự Án]

## Mục đích & Giới thiệu
Mô tả ngắn gọn mục tiêu của repo, bài toán cần giải quyết, đối tượng người dùng hoặc nền tảng hoạt động.

## Tính năng chính
1. **Tính năng A:** Mô tả chức năng và luồng xử lý.
2. **Tính năng B:** Mô tả chức năng và luồng xử lý.
3. **Tính năng C:** Mô tả chức năng và luồng xử lý.

## Cấu trúc thư mục (nguồn chính)
```
src/
├── ...
```

## Mỗi file chính làm gì
| File | Đường dẫn | Chức năng |
|------|-----------|-----------|
| Main | `src/...` | Entry point. |

## Luồng dữ liệu (Data Flow)
1. **Bước 1:** ...
2. **Bước 2:** ...

## Trạng thái hiện tại & Việc còn dang dở
- **Trạng thái:**
  - Tính năng đã hoàn thành ổn định...
  - Cấu hình môi trường dev: ponytail, superpowers, security hook, graphify.
- **Việc có thể mở rộng tiếp theo:**
  1. ...
  2. ...

## Thư viện & Công nghệ dùng
- Liệt kê dependencies, SDK versions, toolchains.

## Lưu ý / Chỗ dễ lỗi (Edge cases)
- Ghi lại các lỗi thường gặp, bẫy logic, các điểm quan trọng khi code.

---

## Nguyên tắc hoạt động của Agent — Triết lý Ponytail & Tối ưu hoá

1. **Thay đổi nhỏ nhất mà đầy đủ:** Không viết code thừa. Sử dụng lại code/helper sẵn có trong dự án trước khi tạo mới.
2. **Sửa dứt điểm nguyên nhân gốc:** Grep tìm kiếm các nơi bị ảnh hưởng, sửa tại nguồn dùng chung.
3. **Không abstraction thừa:** Tránh tạo wrapper hay boilerplate không cần thiết.
4. **Tiết kiệm Token (Token-Saving):** Đọc file có chủ đích, gộp thao tác lệnh song song, trả lời ngắn gọn súc tích.
5. **Đồng bộ tài liệu:** Luôn cập nhật AGENTS.md sau mỗi tính năng hoặc thay đổi kiến trúc lớn.
