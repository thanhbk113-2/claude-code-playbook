
$ErrorActionPreference = "Stop"

$inputJson = [Console]::In.ReadToEnd()
$data = $inputJson | ConvertFrom-Json
$cmd = [string]$data.tool_input.command

# Các lệnh có nguy cơ xóa dữ liệu
$dangerPatterns = @(
    '(?i)\bgit\s+reset\s+--hard\b',
    '(?i)\bgit\s+clean\b',
    '(?i)\brm\s+-[^\n]*r[^\n]*f',
    '(?i)\brmdir\b',
    '(?i)\brd\s+/s\b',
    '(?i)\bdel\s+/s\b',
    '(?i)\berase\s+/s\b',
    '(?i)\bRemove-Item\b',
    '(?i)\bri\b\s+',
    '(?i)\bformat(\.com)?\s+[a-z]:',
    '(?i)\bdiskpart\b'
)

foreach ($pattern in $dangerPatterns) {
    if ($cmd -match $pattern) {

        @{
            hookSpecificOutput = @{
                hookEventName = "PreToolUse"
                permissionDecision = "ask"
                permissionDecisionReason = "SECURITY GUARD: Phát hiện lệnh có khả năng xóa hoặc phá hủy dữ liệu. Hãy kiểm tra trước khi thực hiện."
            }
        } | ConvertTo-Json -Depth 5 -Compress

        exit 0
    }
}

exit 0
