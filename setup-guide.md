# Hướng Dẫn Cài Đặt & Khôi Phục Môi Trường (Setup Guide)

Tài liệu này giúp bạn dựng lại toàn bộ môi trường làm việc thông minh với đầy đủ skills, plugins, hooks bảo vệ và bộ nhớ khi chuyển sang máy mới hoặc cài lại máy.

---

## Bước 1: Cài đặt Claude Code CLI
Yêu cầu môi trường có Node.js (>= 18) và Git.
```bash
# Cài đặt Claude Code toàn cục
npm install -g @anthropic-ai/claude-code
```

---

## Bước 2: Thiết lập cấu hình kết nối & Quyền hạn

1. Tạo thư mục cấu hình cá nhân:
   - Windows: `C:\Users\<Tên_User>\.claude\`
   - Linux/macOS: `~/.claude/`

2. Sao chép file `templates/global-settings.json` vào `~/.claude/settings.json`.
3. Trong từng dự án (Project level):
   - Sao chép nguyên 2 thư mục `.claude/` và `.claude-mem/` từ repo này vào thư mục gốc dự án của bạn.
   - Thư mục `.claude/settings.json` chứa quyền hạn và kết nối Omniroute gateway (`http://localhost:20128`).
   - Thư mục `.claude-mem/` chứa file `.env` và `settings.json` giúp background worker tự kết nối Omniroute.

---

## Bước 3: Cài đặt các Plugin cốt lõi

Chạy các lệnh sau trong terminal Claude Code hoặc CLI:

### 1. Ponytail (Lazy Senior Developer)
```bash
# Thêm marketplace
claude plugin marketplace add ponytail https://github.com/DietrichGebert/ponytail.git

# Cài đặt plugin
claude plugin install ponytail@ponytail
```

### 2. Caveman (Tiết kiệm Token & Terse Mode)
```bash
# Thêm marketplace
claude plugin marketplace add caveman https://github.com/JuliusBrussee/caveman.git

# Cài đặt plugin
claude plugin install caveman@caveman
```

### 3. Claude-Mem (Persistent Memory & MCP Search)
```bash
# Thêm marketplace
claude plugin marketplace add thedotmack https://github.com/thedotmack/claude-mem.git

# Cài đặt plugin
claude plugin install claude-mem@thedotmack
```

### 4. Superpowers (Kỹ thuật phần mềm chuẩn)
```bash
# Cài đặt plugin chính thức
claude plugin install superpowers@claude-plugins-official
```

### 5. Graphify (Trực quan hoá AST Knowledge Graph)
```bash
# Cài đặt qua uv hoặc pip
pip install graphify-cli
# hoặc
uv tool install graphify-cli
```

---

## Bước 4: Thiết lập Hooks An Toàn & Chuẩn Hoá

1. **Security Guard Hook (Chặn lệnh xoá dữ liệu ngoài ý muốn):**
   - Đặt file `hooks/security-guard.ps1` vào `.claude/hooks/` trong repo của bạn.
   - Hook này sẽ chặn các lệnh xóa nguy hiểm như `rm -rf`, `git reset --hard` và yêu cầu xác nhận rõ ràng trước khi chạy.

2. **Conventional Commits Hook:**
   - Đặt file `hooks/conventional-commits.py` vào `~/.claude/hooks/`.
   - Giúp kiểm tra và chuẩn hoá thông điệp commit theo chuẩn (feat, fix, docs, chore, v.v.).

---

## Bước 5: Thiết lập Hướng Dẫn Dự Án (`CLAUDE.md` & `AGENTS.md`)

- **Toàn cục:** Đặt `templates/global-CLAUDE.md` vào `~/.claude/CLAUDE.md`.
- **Từng dự án:** Sao chép `templates/project-AGENTS.md` thành `AGENTS.md` ở thư mục gốc của dự án bạn đang làm việc. Điền thông tin kiến trúc, tính năng và luồng dữ liệu của dự án vào đó.

---

## Bước 6: Đẩy Kho Lưu Trữ Này Lên GitHub

Để lưu trữ tài liệu này trên tài khoản GitHub cá nhân của bạn:

```bash
cd "C:/Users/thanh-win10/Desktop/project-code/claude-code-playbook"

# 1. Thêm toàn bộ file và commit
git add .
git commit -m "feat: initial commit for claude code toolkit and skills guide"

# 2. Tạo repo mới trên GitHub (ví dụ: claude-code-playbook)
# Sau đó liên kết remote (thay URL bằng repo của bạn):
git remote add origin https://github.com/<your-username>/claude-code-playbook.git

# 3. Đổi tên branch chính và push
git branch -M main
git push -u origin main
```
