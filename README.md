# Prueba Técnica: Análisis y Segmentación de Clientes

* **Autor:** Brayan Armando Cumbalaza Vallejo
* **Fecha:** 12 de Agosto, 2025

---

## 1. Descripción del Proyecto

Este repositorio contiene la solución completa a una prueba técnica para un rol de Analista de Datos. El objetivo es analizar el comportamiento transaccional de un grupo de clientes para proponer una estrategia de descuentos segmentada y resolver un conjunto de consultas SQL.

### Tecnologías Clave

* **Lenguaje:** Python 3.10.11
* **Librerías Principales:** Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn
* **Entorno:** Jupyter Lab

---

## 2. Estructura del Proyecto

El repositorio tiene una estructura minimalista y centrada en la carpeta `homework/`, que contiene todo el análisis.

.
├── data/               # Directorio para datos sensibles o brutos (Aqui agregar el excel).
├── file/               # Contenedor para archivos de datos de entrada y salida.
│   ├── input/          # <- Aquí se deben colocar los archivos de datos originales.
│   └── output/         # <- Aquí se guardan los datos ya procesados.
│
├── homework/           # Directorio principal con el desarrollo del proyecto.
│   ├── __pycache__/    # <- Archivos de caché generados por Python.
│   ├── consultas_sql_punto2.sql # <- Consultas SQL utilizadas en el punto 2.
│   ├── functions.py    # <- Script con funciones reutilizables.
│   ├── PreProcess1.ipynb # <- Notebook para el primer paso de preprocesamiento.
│   ├── PreProcess2.ipynb # <- Notebook para el segundo paso de preprocesamiento.
│   ├── README.md       # <- Explica el flujo de trabajo de los notebooks y scripts.
│   ├── Sol_punto_1A.ipynb # <- Solución para la parte A del punto 1.
│   ├── Sol_punto_1B.ipynb # <- Solución para la parte B del punto 1.
│   └── Sol_punto_2.ipynb  # <- Solución para el punto 2.
│
├── venv/               # Directorio del entorno virtual de Python.
│
├── .gitignore          # Define archivos y carpetas a ignorar por Git.
├── LICENSE             # Licencia del proyecto (e.g., MIT).
├── README.md           # Documentación principal del proyecto.
└── requirements.txt    # Lista de dependencias de Python.


---

## 3. Flujo de Trabajo del Análisis

Todo el desarrollo se encuentra dentro de la carpeta `homework/`. El análisis sigue una secuencia lógica a través de tres cuadernos de Jupyter:

1.  **`preprocesamiento.ipynb`**: Se encarga de la ingesta y limpieza de los datos crudos.
2.  **`punto_1.ipynb`**: Resuelve la sección de **Habilidad Práctica**, realizando la segmentación de clientes.
3.  **`punto_2.ipynb`**: Resuelve la sección de **Ejecución SQL**, mostrando las consultas y sus resultados.

*Para una descripción más detallada del proceso, consulte el `README.md` ubicado dentro de la carpeta `/homework`.*

---

## 4. Cómo Replicar el Análisis

Siga estos pasos para configurar el entorno y ejecutar el proyecto localmente.

### Paso 1: Colocar los Archivos de Datos (Acción Manual) 📁

Para poder ejecutar los notebooks, **coloque el archivo Excel o los CSV originales directamente dentro de la carpeta `homework/`**. Los cuadernos están programados para buscar los datos en su misma ubicación.

### Paso 2: Configurar el Entorno Virtual y Dependencias

Abra una terminal en la raíz del proyecto y ejecute los siguientes comandos:

```bash
# Crear el entorno virtual para aislar las dependencias
python -m venv venv

# Activar el entorno
# En Windows:
venv\Scripts\activate
# En macOS / Linux:
source venv/bin/activate

# Instalar todas las librerías necesarias
pip install -r requirements.txt
```

### Paso 3: Ejecutar el Análisis

Inicie Jupyter Lab y navegue a la carpeta de trabajo para ejecutar los cuadernos.

```bash
# Iniciar Jupyter Lab
jupyter lab
```

Una vez iniciado, navegue a la carpeta **`homework/`** y ejecute los cuadernos en orden.

---

## 5. Licencia

Este proyecto está licenciado bajo los términos de la **Licencia MIT**.