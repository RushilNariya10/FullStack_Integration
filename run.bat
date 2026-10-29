@echo off
echo ========================================================
echo   Starting Practical 6: Full Stack Integration (24IT055)
echo ========================================================
echo.

echo 1. Starting Database and Backend on Port 5000...
start "Task Manager API (Port 5000)" cmd /k "cd /d %~dp0Task_Manager_API && node start-db.js & node server.js"

timeout /t 3 /nobreak >nul

echo 2. Starting Frontend Dev Server on Port 5173...
start "React Portfolio & Tasks (Port 5173)" cmd /k "cd /d %~dp0portfolio-24IT055 && npm run dev"

timeout /t 3 /nobreak >nul

echo 3. Opening Browser at http://localhost:5173/tasks...
start http://localhost:5173/tasks

echo.
echo Both servers are running!
echo Backend:  http://localhost:5000
echo Frontend: http://localhost:5173/tasks
echo.
pause

