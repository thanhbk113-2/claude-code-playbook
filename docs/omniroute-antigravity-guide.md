# Hướng Dẫn Cấu Hình Antigravity IDE & Omniroute (Round-Robin Tài Khoản)

Tài liệu hướng dẫn kết nối Antigravity IDE với Omniroute Gateway (`http://localhost:20128`) để tận dụng tính năng xoay vòng tài khoản (Round-Robin / Load Balancing), tránh kẹt rate limit khi lập trình.

---

## 1. Cơ Chế Hoạt Động

```
Antigravity IDE / Claude Code / claude-mem
                │
                ▼ (gửi request đến OpenAI / Anthropic format)
    http://localhost:20128 (Omniroute Gateway)
                │
                ├── Round-Robin / Fallback qua Account 1
                ├── Round-Robin / Fallback qua Account 2
                └── Round-Robin / Fallback qua Account N
                │
                ▼
    Claude / Google DeepMind / OpenAI API
```

- **Omniroute** đóng vai trò Reverse Proxy & Gateway cục bộ tại cổng `20128`.
- Mọi client (Claude Code CLI, background worker claude-mem, hoặc Antigravity IDE) chỉ cần trỏ Base URL về `http://localhost:20128`.
- Omniroute tự động phân phối request (Round-Robin) giữa các tài khoản upstream đã cấu hình, tự động chuyển tài khoản khi gặp rate limit (`429`) hoặc hết quota.

---

## 2. Có Dùng Được Cho Antigravity IDE Không?

**Có.** Antigravity IDE (VS Code-based hoặc JetBrains-based extension) hỗ trợ tuỳ chỉnh Model Provider / Custom API Endpoint.

Chỉ cần cấu hình:
1. **API Base URL**: `http://localhost:20128` (hoặc `http://localhost:20128/v1` tuỳ định dạng client yêu cầu).
2. **API Key / Auth Token**: `omniroute` (hoặc token cấu hình trong Omniroute gateway).
3. **Model Name**: Khớp với model route đã đặt trong Omniroute (ví dụ: `antigravity-combo`, `claude-3-7-sonnet`, `claude-3-5-sonnet`).

---

## 3. Các Cách Cấu Hình Cụ Thể

### Cách 1: Cấu hình qua File Settings của IDE / Extension

Mở file settings JSON của IDE (`settings.json` trong VS Code/Antigravity hoặc cấu hình extension):

```json
{
  "antigravity.apiUrl": "http://localhost:20128/v1",
  "antigravity.apiKey": "omniroute",
  "antigravity.model": "antigravity-combo",
  "anthropic.baseUrl": "http://localhost:20128",
  "anthropic.apiKey": "omniroute"
}
```

> **Lưu ý:** Tuỳ extension Antigravity dùng chuẩn Anthropic native hay OpenAI-compatible:
> - Nếu extension dùng chuẩn **Anthropic**: Trỏ Base URL là `http://localhost:20128`
> - Nếu extension dùng chuẩn **OpenAI-compatible**: Trỏ Base URL là `http://localhost:20128/v1`

---

### Cách 2: Cấu hình qua Biến Môi Trường (System / Process Environment)

Nếu IDE chạy dưới terminal hoặc khởi động từ môi trường chung:

**Windows PowerShell:**
```powershell
[System.Environment]::SetEnvironmentVariable('ANTHROPIC_BASE_URL', 'http://localhost:20128', 'User')
[System.Environment]::SetEnvironmentVariable('ANTHROPIC_AUTH_TOKEN', 'omniroute', 'User')
[System.Environment]::SetEnvironmentVariable('ANTHROPIC_API_KEY', 'omniroute', 'User')
[System.Environment]::SetEnvironmentVariable('OPENAI_BASE_URL', 'http://localhost:20128/v1', 'User')
[System.Environment]::SetEnvironmentVariable('OPENAI_API_KEY', 'omniroute', 'User')
```

---

### Cách 3: Đồng Bộ Cấu Hình Dự Án (.claude & .claude-mem)

Trong mỗi thư mục dự án mở bằng Antigravity IDE, giữ 2 thư mục đã tạo:

1. **`.claude/settings.json`**:
```json
{
  "env": {
    "ANTHROPIC_BASE_URL": "http://localhost:20128",
    "ANTHROPIC_AUTH_TOKEN": "omniroute",
    "ANTHROPIC_MODEL": "antigravity-combo"
  }
}
```

2. **`.claude-mem/.env`**:
```env
ANTHROPIC_BASE_URL=http://localhost:20128
ANTHROPIC_AUTH_TOKEN=omniroute
```

3. **`.claude-mem/settings.json`**:
```json
{
  "CLAUDE_MEM_CLAUDE_AUTH_METHOD": "gateway",
  "CLAUDE_MEM_PROVIDER": "claude",
  "CLAUDE_MEM_WORKER_PORT": "37740",
  "CLAUDE_MEM_WORKER_HOST": "127.0.0.1",
  "CLAUDE_MEM_MODE": "code"
}
```

---

## 4. Kiểm Tra & Xác Nhận Round-Robin Hoạt Động

1. **Kiểm tra Omniroute Gateway đang chạy:**
   ```bash
   curl http://localhost:20128/health
   # hoặc
   curl http://localhost:20128/v1/models
   ```

2. **Gửi prompt thử nghiệm từ IDE:**
   - Mở chat Antigravity IDE, gửi 2–3 câu hỏi liên tiếp.
   - Quan sát log tại console của Omniroute Gateway:
     - Request 1: Route vào Account A.
     - Request 2: Route vào Account B (Round-robin xoay vòng thành công).
     - Khi một tài khoản chạm `429 Too Many Requests`, Omniroute tự động retry qua tài khoản kế tiếp mà IDE không bị gián đoạn.

---

## 5. Xử Lý Sự Cố Thường Gặp (Troubleshooting)

| Lỗi | Nguyên nhân | Cách khắc phục |
|---|---|---|
| `Connection refused` (không kết nối được 20128) | Omniroute gateway chưa bật | Khởi động lại dịch vụ Omniroute trên máy |
| `401 Unauthorized` | Token không khớp | Kiểm tra token trong file `.env` hoặc IDE settings với token cấu hình trong Omniroute |
| `Model not found` | Tên model chưa khai báo trong config Omniroute | Dùng model alias chuẩn như `antigravity-combo` hoặc khai báo alias trong Omniroute routes |
| IDE tự reset về URL mặc định | Extension ghi đè từ global profile | Gán biến môi trường hệ thống (`ANTHROPIC_BASE_URL`, `OPENAI_BASE_URL`) để ép buộc dùng gateway |
