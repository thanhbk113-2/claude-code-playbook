# Danh Mục Toàn Bộ Skills Đã Cài Đặt (Complete Skills Catalog)

Dưới đây là danh sách phân loại chi tiết toàn bộ các skill có sẵn trong môi trường phát triển Claude Code.

---

## 1. Nhóm Superpowers (Quy trình chuẩn kỹ thuật)

| Tên Skill | Lệnh kích hoạt | Mục đích |
|-----------|----------------|----------|
| **using-superpowers** | Tự động hoặc `/using-superpowers` | Khởi đầu phiên làm việc, thiết lập kỷ luật bắt buộc gọi skill trước khi làm. |
| **brainstorming** | `/brainstorming` | Phân tích bài toán, đề xuất giải pháp và đánh giá rủi ro trước khi lập plan. |
| **systematic-debugging** | `/systematic-debugging` | Điều tra lỗi 4 bước có căn cứ: tái hiện -> tìm gốc rễ -> sửa tối thiểu -> xác minh. |
| **test-driven-development** | `/test-driven-development` | Viết test trước, viết code pass sau, refactor an toàn (TDD). |
| **writing-plans** | `/writing-plans` | Lập kế hoạch chi tiết từng bước cho các tác vụ phức tạp. |
| **executing-plans** | `/executing-plans` | Thực thi tuần tự từng bước trong plan đã duyệt. |
| **subagent-driven-development** | `/subagent-driven-development` | Điều phối subagents thực hiện các phần việc độc lập. |
| **dispatching-parallel-agents** | `/dispatching-parallel-agents` | Chạy song song nhiều agent để giải quyết bài toán fan-out. |
| **requesting-code-review** | `/requesting-code-review` | Yêu cầu review chéo chất lượng code. |
| **receiving-code-review** | `/receiving-code-review` | Hướng dẫn tiếp nhận và xử lý phản hồi từ code review. |
| **verification-before-completion** | `/verification-before-completion` | Chạy build/test thật để xác minh kết quả trước khi báo xong. |
| **finishing-a-development-branch** | `/finishing-a-development-branch` | Dọn dẹp branch, gộp commit và chuẩn bị merge. |
| **using-git-worktrees** | `/using-git-worktrees` | Tạo môi trường cô lập bằng git worktree cho tác vụ lớn. |
| **frontend-design** | `/frontend-design` | Thiết kế giao diện UI/UX trực quan, hiện đại. |
| **writing-skills** | `/writing-skills` | Hướng dẫn tạo thêm các custom skill mới. |
| **diagnosing-superpowers** | `/diagnosing-superpowers` | Kiểm tra tính toàn vẹn và lỗi cài đặt của bộ superpowers. |

---

## 2. Nhóm Ponytail (Tối ưu code - Senior lười hiệu năng cao)

| Tên Skill | Lệnh kích hoạt | Mục đích |
|-----------|----------------|----------|
| **ponytail** | `/ponytail [lite\|full\|ultra]` | Kích hoạt triết lý code tối thiểu mà hiệu quả tối đa. |
| **ponytail-review** | `/ponytail-review` | Review code loại bỏ over-engineering và code thừa. |
| **ponytail-audit** | `/ponytail-audit` | Quét phát hiện dead code, helper chưa dùng. |
| **ponytail-debt** | `/ponytail-debt` | Đo lường nợ kỹ thuật tồn đọng. |
| **ponytail-gain** | `/ponytail-gain` | Báo cáo số dòng code và độ phức tạp đã loại bỏ. |
| **ponytail-help** | `/ponytail-help` | Tra cứu bảng lệnh và tài liệu ponytail. |

---

## 3. Nhóm Caveman (Tiết kiệm Token & Ngắn gọn)

| Tên Skill | Lệnh kích hoạt | Mục đích |
|-----------|----------------|----------|
| **caveman** | `/caveman` | Chế độ giao tiếp siêu ngắn, giữ nguyên 100% dữ liệu kỹ thuật. |
| **caveman-ultra** | `/caveman ultra` | Chế độ cực hạn ngắn gọn. |
| **caveman-setup** | `/caveman-setup` | Cấu hình tham số nén cho caveman. |
| **caveman-stats** | `/caveman-stats` | Thống kê số lượng token đã tiết kiệm được. |
| **caveman-compress** | `/caveman-compress` | Nén các đoạn text/prompt dài thành siêu ngắn. |
| **caveman-review** | `/caveman-review` | Review diff bằng định dạng ngắn gọn 1 dòng/lỗi. |
| **caveman-commit** | `/caveman-commit` | Tạo commit message chuẩn nén. |
| **surgical-patch** | `/surgical-patch` | Vá lỗi cực nhỏ (1-2 file), cấm lan man. |
| **safe-refactor** | `/safe-refactor` | Tái cấu trúc an toàn, giữ nguyên logic. |
| **lean-build** | `/lean-build` | Tối ưu quy trình build nhanh gọn. |
| **investigate-first** | `/investigate-first` | Điều tra chỉ định vị file:line, không sửa vội. |

---

## 4. Nhóm Claude-Mem (Bộ nhớ dự án dài hạn)

| Tên Skill | Lệnh kích hoạt | Mục đích |
|-----------|----------------|----------|
| **mem-search** | `/mem-search` | Tìm kiếm ngữ nghĩa trong vector database và timeline. |
| **smart-explore** | `/smart-explore` | Khám phá codebase kết hợp kinh nghiệm trong quá khứ. |
| **learn-codebase** | `/learn-codebase` | Quét và lập chỉ mục hiểu toàn bộ dự án mới. |
| **how-it-works** | `/how-it-works` | Giải thích kiến trúc và cơ chế vận hành của module. |
| **pathfinder** | `/pathfinder` | Vẽ đường đi và chỉ ra các điểm chạm sửa đổi mã. |
| **do** | `/do` | Bắt đầu công việc có gắn thẻ tracking. |
| **standup** | `/standup` | Báo cáo tóm tắt công việc đã làm trong ngày. |
| **timeline-report** | `/timeline-report` | Xuất báo cáo lịch sử thay đổi dạng timeline. |
| **handoff** | `/handoff` | Bàn giao ngữ cảnh ca làm việc cho phiên sau. |
| **work_state_write** | Tool gọi tự động | Ghi nhớ checklist và trạng thái task dở dang. |
| **work_state_read** | Tool gọi tự động | Đọc lại checklist công việc đã lưu. |

---

## 5. Nhóm Đồ thị tri thức & Mặc định hệ thống

| Tên Skill | Lệnh kích hoạt | Mục đích |
|-----------|----------------|----------|
| **graphify** | `/graphify` | Phân tích AST, tạo đồ thị tương tác HTML về quan hệ code. |
| **code-review** | `/code-review` | Review mã nguồn chuyên sâu (low, medium, high, max). |
| **simplify** | `/simplify` | Làm sạch, tái sử dụng và đơn giản hoá code vừa viết. |
| **security-review** | `/security-review` | Quét lỗ hổng bảo mật trong code và cấu hình. |
| **dataviz** | `/dataviz` | Hướng dẫn vẽ biểu đồ, dashboard trực quan chuẩn mực. |
| **update-config** | `/update-config` | Hướng dẫn thay đổi settings, hooks và permissions. |
| **loop** | `/loop` | Chạy lệnh lặp lại theo chu kỳ định sẵn. |
| **generate-tests** | `/generate-tests` | Tự động sinh test cases bao phủ các nhánh logic. |
