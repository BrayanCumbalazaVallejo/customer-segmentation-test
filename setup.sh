#!/bin/bash
# Este es un script para configurar el proyecto

echo "✅ 1. Creando la estructura de carpetas..."
mkdir -p data file/input file/output

echo "✅ 2. Creando el entorno virtual 'venv'..."
# Usamos python3 para ser más explícitos
python3 -m venv venv

echo "✅ 3. Activando el entorno e instalando dependencias..."
# Activamos el entorno DENTRO del script para poder usar pip
source venv/bin/activate

# Instalamos las librerías
pip install -r requirements.txt

echo ""
echo "🎉 ¡Configuración completada!"
echo "⚠️ Recuerda activar el entorno en tu terminal para empezar a trabajar:"
echo "source venv/bin/activate"