@echo off
:: ── start.bat ──────────────────────────────────
::  Batch file khởi động dev server cho landing page.
::  Dùng "%~dp0" để chạy đúng thư mục chứa file bat
::  (không bị lệch CWD khi double-click từ shortcut).
:: ──────────────────────────────────────────────

cd /d "%~dp0"

echo ============================================
echo   AURA DECOR - Landing Page
echo   Starting development server...
echo ============================================
echo.

npm run dev

:: Dừng lại để dev không tắt cửa sổ CMD ngay
:: khi có lỗi hoặc khi stop server (Ctrl+C).
pause
