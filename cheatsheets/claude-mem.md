# Claude-Mem Cheatsheet (v16.1.3)

Triết lý: **Persistent Project Memory** — Lưu trữ ngữ cảnh dự án bền vững qua các phiên làm việc (sessions), cho phép tìm kiếm ngữ nghĩa (MCP Vector search) và quản lý work state độc lập.

## Cài đặt

Mở **Claude Desktop → tab Code** (hoặc Claude Code, Codex, RevidAPI Code), chọn thư mục dự án, dán **một câu** này là xong. AI tự tải về và gắn skill, không cần biết lệnh. Chạy bằng API RevidAPI như bình thường:

```
Cài giúp tôi Claude Mem (https://github.com/thedotmack/claude-mem) cho mọi dự án, kể cả tab Code của Claude Desktop. Ưu tiên cách tác giả khuyên trong README (plugin nếu có); không có thì tải repo về (không có git thì tải zip) và chép các thư mục có SKILL.md vào ~/.claude/skills. Xoá thư mục tạm sau khi xong. Liệt kê skill đã cài và giải thích ngắn bằng tiếng Việt cách tôi dùng.
```

Quen dùng Terminal thì chạy lệnh này trong thư mục dự án (máy cần Node.js):

```
npx skills add thedotmack/claude-mem
```

### Sau khi cài

Mở **phiên mới** (Claude Desktop: mở tab Code mới) thì Claude Mem mới có hiệu lực. Cứ nói việc như bình thường, Claude tự dùng khi hợp.

### Tắt hoặc gỡ ra

Dán câu này vào cùng chỗ đã cài, AI tự gỡ sạch:

```
Gỡ Claude Mem (https://github.com/thedotmack/claude-mem) ra khỏi máy: nếu cài dạng plugin thì uninstall plugin, nếu chép vào ~/.claude/skills hoặc .claude/skills thì xoá đúng các thư mục skill của nó, gỡ cả MCP/hook nếu có. Không xoá thứ gì khác. Xong báo tôi đã gỡ những gì.
```

## Cấu trúc lưu trữ
- Nằm tại: `~/.claude-mem/`
- Cơ sở dữ liệu: `claude-mem.db` (SQLite + Chroma vector database).
- Tài liệu hướng dẫn: `RULES-AND-TOOLS.md`.

---

## Các nhóm lệnh & Skills

### 1. Tìm kiếm & Truy vấn (Search & Recall)
- `/mem-search`: Tìm kiếm thông minh qua 3 bước: `search(query)` -> `timeline(anchor)` -> `get_observations(ids)`.
- `/smart-explore`: Khám phá toàn diện các góc khuất trong codebase kết hợp bộ nhớ lịch sử.
- `/learn-codebase`: Học và lập chỉ mục cấu trúc codebase mới.
- `/how-it-works`: Giải thích nguyên lý hoạt động của một module dựa trên mã nguồn và lịch sử sửa đổi.
- `/pathfinder`: Hướng dẫn luồng đi và định vị các điểm chạm (touchpoints) trong dự án.

### 2. Quản lý công việc & To-Do (Work State)
- `work_state_write`: Ghi lại task list hoặc state đang làm dở (canonical to-do list).
- `work_state_read`: Đọc lại danh sách công việc (bao gồm cả task đã đóng nếu `includeClosed=true`).
- `/do`: Bắt đầu thực thi một task cụ thể có ghi nhận vào bộ nhớ.
- `/standup`: Tóm tắt báo cáo tiến độ công việc đã làm trong ngày/phiên.
- `/timeline-report`: Xuất báo cáo timeline các sự kiện (feature, bugfix, refactor) theo ngày.
- `/handoff`: Tạo bản bàn giao ngữ cảnh chi tiết khi chuyển ca hoặc đóng phiên làm việc.

### 3. Ký hiệu trên Timeline
- 🎯 `session`: Khởi động phiên làm việc.
- ● `bugfix`: Sửa lỗi.
- ◆ `feature`: Tính năng mới.
- ↻ `refactor`: Tái cấu trúc mã nguồn.
- ✓ `change`: Thay đổi thông thường.
- ○ `discovery`: Phát hiện / tìm hiểu mới.
- ⚖ `decision`: Quyết định kiến trúc / thiết kế.
- ⚠ `security_alert`: Cảnh báo an toàn / bảo mật.
