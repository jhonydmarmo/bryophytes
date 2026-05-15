@echo off
cd /d "%~dp0"
echo ============================================
echo   BRyophytes - Servidor Local
echo ============================================
echo.
echo Abrindo http://localhost:8000/maps.html ...
echo Pressione Ctrl+C para encerrar.
echo.
start "" "http://localhost:8000/maps.html"

python -m http.server 8000 2>nul && goto :end
python3 -m http.server 8000 2>nul && goto :end
py -m http.server 8000 2>nul && goto :end

echo.
echo ERRO: Python nao encontrado.
echo Instale Python em https://python.org e tente novamente.
pause

:end
