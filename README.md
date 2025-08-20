# Análisis y Segmentación de Clientes para Estrategia de Descuentos

* **Autor:** Brayan Armando Cumbalaza Vallejo
* **Fecha:** 12 de Agosto, 2025

---

## 1. Descripción del Proyecto

Este repositorio presenta la solución a una prueba técnica para el rol de Analista de Datos. El objetivo principal es analizar el comportamiento transaccional de un grupo de clientes para desarrollar un modelo de **segmentación de clientes** utilizando análisis RFM (Recencia, Frecuencia, Monetario) y el algoritmo K-Means. La segmentación resultante sirve como base para proponer una estrategia de descuentos personalizada.

Adicionalmente, el proyecto incluye la resolución de un conjunto de consultas de negocio utilizando **SQL**.

---

## 2. Guía de Inicio Rápido

Sigue estos pasos para configurar el entorno y replicar el análisis en tu máquina local.

### Prerrequisitos

* **Git** instalado.
* **Python 3.10** o superior.

### Pasos de Instalación

1.  **Ejecutar el script de configuración automática:**
    Este script creará un entorno virtual (`venv`), instalará todas las dependencias listadas en `requirements.txt` y registrará un nuevo kernel de Jupyter. Abre una terminal en la raíz del proyecto y ejecuta el comando para tu sistema operativo.

    * **Windows** 💻:
        ```bash
        setup.bat
        ```

    * **macOS / Linux** 🐧:
        ```bash
        # Otorga permisos de ejecución (solo la primera vez)
        chmod +x setup.sh

        # Ejecuta el script
        ./setup.sh
        ```
2.  **Activar el entorno virtual:**
    Una vez finalizado el script, activa el entorno para empezar a trabajar:
    * **Windows**: `venv\Scripts\activate`
    * **macOS / Linux**: `source venv/bin/activate`

3.  **Añadir el archivo de datos:**
    * Coloca el archivo `Prueba proceso de selección Analista de Datos - bases.xlsx` dentro de la carpeta `file/input/`.

---

## 4. Flujo de Trabajo del Análisis

El análisis se encuentra completamente contenido en la carpeta `homework/`. Para obtener los resultados finales, los notebooks deben ejecutarse en el siguiente orden:

1.  **`PreProcess1.ipynb`**: Realiza la limpieza inicial de los datos, manejo de valores nulos, corrección de tipos de datos y el preprocesamiento básico de las tablas.
2.  **`PreProcess2.ipynb`**: Ejecuta la ingeniería de características (feature engineering), calculando las métricas de Recencia, Frecuencia y Monetario (RFM) necesarias para la segmentación.
3.  **`Sol_punto_1A.ipynb`**: Contiene un análisis exploratorio de datos (EDA) para entender las distribuciones, correlaciones y características principales de los clientes.
4.  **`Sol_punto_1B.ipynb`**: Implementa el modelo de segmentación de clientes utilizando el algoritmo K-Means sobre las métricas RFM. Incluye la selección del número óptimo de clusters y la caracterización de cada segmento.
5.  **`Sol_punto_2.ipynb`**: Muestra la ejecución y los resultados de las consultas SQL definidas en `consultas_sql_punto2.sql`, resolviendo las preguntas de negocio planteadas.

*Para una descripción más detallada del proceso, puedes consultar el `README.md` ubicado dentro de la carpeta `homework/`.*

---

## 5. Estructura del Proyecto

El repositorio está organizado con la siguiente estructura de directorios:

.
├── data/                   # Directorio para datos limpios y procesados (datos sensibles).
├── file/                   # Contenedor para archivos de datos de entrada y salida.
│   ├── input/              # <- Aquí se coloca el archivo .xlsx inicial.
│   └── output/             # <- Aquí se guardan los datos intermedios del preprocesamiento.
│
├── homework/               # Directorio principal con todo el desarrollo del análisis.
│   ├── __pycache__/        # <- Archivos de caché generados por Python.
│   ├── consultas_sql_punto2.sql # <- Script con todas las consultas SQL.
│   ├── functions.py        # <- Módulo con funciones reutilizables para el análisis.
│   ├── PreProcess1.ipynb   # <- Notebook para el primer paso de preprocesamiento.
│   ├── PreProcess2.ipynb   # <- Notebook para el segundo paso de preprocesamiento (RFM).
│   ├── README.md           # <- Documentación interna del flujo de trabajo.
│   ├── Sol_punto_1A.ipynb  # <- Notebook con el Análisis Exploratorio de Datos (EDA).
│   ├── Sol_punto_1B.ipynb  # <- Notebook con la segmentación de clientes (K-Means).
│   └── Sol_punto_2.ipynb   # <- Notebook con la solución de las consultas SQL.
│
├── venv/                   # Directorio del entorno virtual de Python.
│
├── .gitignore              # Define archivos y carpetas a ignorar por Git.
├── LICENSE                 # Licencia del proyecto.
├── README.md               # Documentación principal del proyecto (este archivo).
├── requirements.txt        # Lista de dependencias de Python para instalar.
├── setup.bat               # Script de configuración para Windows.
└── setup.sh                # Script de configuración para Linux/Mac.

´´´

---

## 5. Tecnologías Utilizadas

* **Lenguaje:** Python 3.10.11
* **Librerías Principales:**
    * `Pandas`: Manipulación y análisis de datos.
    * `NumPy`: Soporte para operaciones numéricas.
    * `Scikit-learn`: Implementación del modelo K-Means y preprocesamiento.
    * `Matplotlib` & `Seaborn`: Visualización de datos.
* **Entorno:** Jupyter Lab

---

## 6. Licencia

Este proyecto está licenciado bajo los términos de la **Licencia MIT**.