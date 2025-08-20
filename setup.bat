@echo off
REM Este es un script para configurar el proyecto

echo "✅ 1. Creando la estructura de carpetas..."
md data
md file\input
md file\output

echo "✅ 2. Creando el entorno virtual 'venv'..."
REM Usamos py -3 para asegurar que se usa Python 3
py -3 -m venv venv

echo "✅ 3. Instalando dependencias..."
REM Ejecutamos pip usando la ruta directa del entorno virtual
call venv\Scripts\python.exe -m pip install -r requirements.txt

echo.
echo "🎉 ¡Configuracion completada!"
echo "⚠️ Recuerda activar el entorno en tu terminal para empezar a trabajar:"
echo "venv\Scripts\activate"