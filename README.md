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

```
├── file/              # Contenedor para los archivos de datos.
│   ├── input/         # <- Aquí se debe colocar el archivo de datos original.
│   └── output/        # <- Aquí se guardan los datos ya procesados.
│
├── data/              # <- Manejo de datos sencibles (visibles solo con codigo+excel).
├── homework/          # Directorio principal que contiene todo el desarrollo de la prueba.
│   ├── functions.ipynb
│   ├── preprocesamiento.ipynb
│   ├── punto_1.ipynb
│   ├── punto_2.ipynb
│   └── README.md      # <- Explica en detalle el flujo de trabajo de los notebooks.
│
├── .gitignore         # <- Define los archivos y carpetas a ignorar conservando la privacidad de los mismos.
├── LICENSE            # <- Licencia del proyecto (MIT).
├── README.md          # <- Este archivo de documentación principal.
└── requirements.txt   # <- Lista de dependencias de Python para el proyecto.
```

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