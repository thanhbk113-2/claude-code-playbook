# ⚡ Claude Code Playbook & Developer Toolkit

> **Cẩm nang toàn diện về kỹ năng (Skills), cấu hình mẫu (Templates), cơ chế bảo vệ (Hooks) và bộ nhớ dự án (Persistent Memory) cho Claude Code.**  
> Lưu lại kho này trên GitHub để tra cứu nhanh mỗi khi quên hoặc thiết lập trên máy mới.

---

## 📂 Cấu Trúc Kho Lưu Trữ

```
claude-code-playbook/
├── README.md                     # Tài liệu tổng quan & tra cứu nhanh (bạn đang đọc)
├── setup-guide.md                # Hướng dẫn chi tiết dựng môi trường từ số 0
├── cheatsheets/                  # Tóm tắt hướng dẫn & mẹo thực chiến từng bộ công cụ
│   ├── superpowers.md            # Quy trình SE chuẩn: brainstorming, debugging, TDD, planning
│   ├── ponytail.md               # Triết lý senior dev lười, tối giản code, audit, debt
│   ├── caveman.md                # Chế độ giao tiếp siêu ngắn, tiết kiệm token tối đa
│   ├── claude-mem.md             # Bộ nhớ dài hạn, tìm kiếm vector, theo dõi work state
│   └── graphify.md               # Trực quan hoá mã nguồn thành đồ thị tri thức AST
├── skills-reference/             # Danh mục toàn bộ các kỹ năng đã cài đặt
│   └── all-skills.md             # Bảng tra cứu tên lệnh, tham số và mục đích của từng skill
├── templates/                    # Các file cấu hình mẫu sẵn dùng
│   ├── global-CLAUDE.md          # Mẫu file hướng dẫn toàn cục (~/.claude/CLAUDE.md)
│   ├── project-AGENTS.md         # Mẫu file tài liệu dự án chuẩn cho AI (AGENTS.md)
│   ├── global-settings.json      # Mẫu settings toàn cục (plugin, marketplaces)
│   └── project-settings.json     # Mẫu settings từng dự án (permissions, safety, gateway)
└── hooks/                        # Các script hooks tự động hóa và bảo vệ
    ├── security-guard.ps1        # Chặn lệnh xóa dữ liệu ngoài ý muốn (rm, git reset --hard)
    └── conventional-commits.py   # Chuẩn hoá thông điệp git commit
```

---

## 🚀 Bảng Tra Cứu Nhanh Lệnh Thường Dùng (Quick Cheatsheet)

| Nhu cầu / Tình huống | Lệnh gọi | Bộ công cụ |
|----------------------|----------|------------|
| Muốn bắt đầu tính năng mới, phân tích hướng đi | `/brainstorming` | Superpowers |
| Gặp bug, app crash, logic sai cần điều tra gốc rễ | `/systematic-debugging` | Superpowers |
| Viết tính năng có test chặt chẽ (Test-Driven) | `/test-driven-development` | Superpowers |
| Lập kế hoạch chi tiết từng bước cho task lớn | `/writing-plans` | Superpowers |
| Thực thi kế hoạch tuần tự từng bước | `/executing-plans` | Superpowers |
| Muốn code tối giản nhất, tránh code thừa | `/ponytail full` | Ponytail |
| Rà soát code thừa, over-engineering | `/ponytail-review` | Ponytail |
| Bật chế độ tiết kiệm token, trả lời ngắn gọn | `/caveman` | Caveman |
| Tắt chế độ caveman / ponytail | `normal mode` hoặc `stop caveman` | Core |
| Tìm kiếm trong bộ nhớ lịch sử các phiên trước | `/mem-search` | Claude-Mem |
| Xuất timeline công việc theo ngày | `/timeline-report` | Claude-Mem |
| Vẽ biểu đồ tri thức toàn bộ quan hệ code | `/graphify` | Graphify |
| Review chất lượng code trước khi commit | `/code-review` | Code Review |

---

## 🛠️ Đẩy Lên GitHub Lần Đầu

Chạy các lệnh sau để đưa toàn bộ kho tài liệu này lên tài khoản GitHub của bạn:

```bash
cd "C:/Users/thanh-win10/Desktop/project-code/claude-code-playbook"

git add .
git commit -m "feat: complete claude code developer playbook with skills, templates, hooks and cheatsheets"

# Tạo repo mới trên GitHub rồi gán remote:
git remote add origin https://github.com/<tên-tài-khoản>/<tên-repo>.git

git branch -M main
git push -u origin main
```
