# Caveman Cheatsheet (v4.2.0)

Triết lý: **Terse Voice, Zero Fluff** — Giữ nguyên 100% nội dung kỹ thuật cốt lõi, loại bỏ toàn bộ từ ngữ thừa, lời chào hỏi, xã giao để tiết kiệm tối đa token và băng thông.

## Các lệnh & chế độ

- `/caveman`: Kích hoạt chế độ caveman chuẩn (ngắn gọn, trực tiếp, xúc tích).
- `/caveman ultra`: Chế độ siêu nén (cực ngắn).
- `/caveman wenyan`: Chế độ phong cách cổ văn / siêu tối giản.
- `/caveman status`: Kiểm tra trạng thái hiện tại.
- Tắt chế độ: gõ `stop caveman` hoặc `normal mode`.

---

## Quy tắc cốt lõi

1. **Trả lời trước:** Định dạng: `[đối tượng] [hành động] [nguyên nhân]. [bước tiếp theo].`
2. **Loại bỏ xã giao:** Không "Sure!", "I'd be happy to", "Let me", "Hope this helps".
3. **Từ ngắn:** "fix" thay vì "implement a solution for".
4. **Không bỏ sót:** Không bao giờ lược bỏ các từ phủ định (`not`, `never`, `no`, `only`, `except`), tên file, đường dẫn, lệnh, số liệu hoặc lỗi kỹ thuật.
5. **Giữ nguyên định dạng kỹ thuật:** Code block, mã lỗi, paths phải chuẩn xác 100%.

---

## Khi nào phá lệ (Nói đủ câu văn xuôi)

1. Cảnh báo bảo mật.
2. Thao tác nguy hiểm không thể đảo ngược (cần người dùng xác nhận).
3. Thứ tự các bước dễ gây nhầm lẫn nếu viết tắt.
4. Người dùng bối rối hoặc hỏi lại câu hỏi.
5. Nội dung ghi ra file lưu vĩnh viễn (code, commit message, docs, PRs).
6. Khi hỏi câu hỏi cho người dùng lựa chọn phương án.

---

Mở Claude Desktop — tab Code (hoặc Claude Code, Codex, RevidAPI Code), chọn thư mục dự án, dán một câu này là xong. AI tự tải về và gắn skill, không cần biết lệnh. Chạy bằng API RevidAPI phụ bình thường:

```text
cài giúp tôi superpowers (https://github.com/obra/superpowers) cho mọi dự án, kể cả tab Code của Claude Desktop. Ưu tiên các tác giả trong README (plugin thì uninstall plugin), nếu chép vào ~/.claude/skills hoặc ~/.claude/plugins thì đọc lại repo về (không cần biết lệnh). Liệt kê skill đã cài và giải thích ngắn bằng tiếng Việt cách tôi dùng.
```

Quên dùng Terminal thì chạy lệnh này trong thư mục dự án (máy cần Node.js):

```text
npx skills add obra/superpowers
```

## Sau khi cài

Mở phiên mới (Claude Desktop: mở tab Code mới) thì Superpowers mới có hiệu lực.

Cũ rồi việc có như bọn trò, nhưng Claude Code dùng bình thường.

Lưu ý: Claude sẽ hỏi kỹ hơn và tốn token hơn với việc lớn. Việc nhỏ, sửa nhanh thì nên tạm tắt.

## Tắt hoặc gỡ ra

Dán câu này vào cùng chỗ đã cài. AI tự gỡ sạch:

```text
gỡ superpowers (https://github.com/obra/superpowers) ra khỏi máy, nếu tải dụng plugin thì uninstall plugin. Nếu chép vào ~/.claude/skills hoặc ~/.claude/plugins thì gỡ thư mục tương ứng đó. Xong báo tôi đã gỡ nhưng không cần làm gì tiếp.
```
