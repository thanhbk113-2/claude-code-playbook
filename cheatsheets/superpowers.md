# Superpowers Skill Cheatsheet (v7.0.2)

Hệ thống kỹ năng chuẩn hóa quy trình kỹ thuật phần mềm (Software Engineering Framework) cho Claude Code.

## Quy tắc vàng (The Rule)
- Kích hoạt skill **TRƯỚC** khi thực hiện bất kỳ hành động nào (kể cả câu hỏi làm rõ hay khám phá codebase).
- Khi có nhiều skill áp dụng: Skill quy trình (Process Skills: brainstorming, systematic-debugging) luôn ưu tiên chạy trước, sau đó mới đến skill triển khai (Implementation Skills).

---

## 1. Quy trình cốt lõi

### `/brainstorming`
- **Khi nào dùng:** Bắt đầu tính năng mới, tái cấu trúc lớn, hoặc khi yêu cầu chưa rõ ràng.
- **Mục tiêu:** Khám phá ý tưởng, phân tích trade-offs, đề xuất giải pháp trước khi viết plan.
- **Quy tắc:** Đưa ra các phương án (options) cùng ưu/nhược điểm cụ thể.

### `/systematic-debugging`
- **Khi nào dùng:** Khi gặp bug, test fail, crash, hoặc hành vi không mong đợi.
- **Quy tắc 4 bước nghiêm ngặt:**
  1. Tái hiện lỗi (Reproduce).
  2. Xác định nguyên nhân gốc (Find root cause - grep callers, đọc logs).
  3. Đề xuất giải pháp tối thiểu & an toàn.
  4. Xác minh (Verify fix - chạy test hoặc reproducer).
- **Tuyệt đối cấm:** Đoán mò và sửa thử ("shotgun debugging").

### `/test-driven-development` (TDD)
- **Khi nào dùng:** Triển khai logic nghiệp vụ mới hoặc sửa bug cần độ tin cậy cao.
- **Quy trình:**
  1. Viết test fail trước.
  2. Viết code tối thiểu để test pass.
  3. Refactor sạch sẽ mà test vẫn xanh.

---

## 2. Lập kế hoạch & Thực thi

### `/writing-plans`
- **Khi nào dùng:** Chia nhỏ một bài toán lớn thành các bước thực thi rõ ràng, tuần tự.
- **Nội dung plan:** Mỗi bước phải có: Task, file bị ảnh hưởng, code mẫu/thay đổi cụ thể, tiêu chí xác nhận (verification criteria).

### `/executing-plans`
- **Khi nào dùng:** Thực thi plan đã duyệt theo từng bước tuần tự.
- **Quy tắc:** Kiểm tra xong bước hiện tại mới chuyển sang bước tiếp theo; cập nhật trạng thái checklist liên tục.

### `/subagent-driven-development`
- **Khi nào dùng:** Chia việc phức tạp cho các subagents chạy độc lập, cách ly ngữ cảnh.

### `/dispatching-parallel-agents`
- **Khi nào dùng:** Thực thi song song nhiều tác vụ độc lập (ví dụ: quét tìm kiếm trên nhiều thư mục, chạy nhiều module test).

### `/using-git-worktrees`
- **Khi nào dùng:** Tạo branch làm việc cách ly trên git worktree để không ảnh hưởng working copy chính.

---

## 3. Review & Hoàn thiện

### `/requesting-code-review` & `/code-review`
- **Khi nào dùng:** Trước khi merge code hoặc sau khi hoàn thành một module.
- **Mục tiêu:** Rà soát bug logic, bảo mật, code smells, rủi ro hồi quy.

### `/verification-before-completion`
- **Khi nào dùng:** Trước khi thông báo cho user là "đã xong".
- **Quy tắc:** Phải tự tay chạy build/test/linter thật; không được suy đoán rằng "chắc là code chạy ổn".

### `/finishing-a-development-branch`
- **Khi nào dùng:** Chuẩn bị merge hoặc đóng branch; dọn dẹp worktree và commit chuẩn.
