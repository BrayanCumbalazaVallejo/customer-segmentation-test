# Desarrollo de la Prueba Técnica

Este directorio contiene todo el código y análisis desarrollado para resolver la prueba técnica. El flujo de trabajo está dividido en tres notebooks principales.

## Contenido de los Notebooks

1.  **`preprocesamiento.ipynb`**
    * **Objetivo:** Tomar los datos crudos y no limpios desde la carpeta `/file/input/`.
    * **Proceso:** Realiza todas las tareas de limpieza, transformación, unión de tablas y preprocesamiento necesarias.
    * **Resultado:** Guarda un único archivo Excel limpio en la carpeta `/file/output/`, listo para el análisis. El archivo de salida conserva el mismo nombre que el archivo original para mantener la trazabilidad.

2.  **`punto_1.ipynb`**
    * **Objetivo:** Responder a la sección "1. HABILIDAD PRACTICA" de la prueba.
    * **Proceso:** Carga los datos ya limpios desde `/file/output/`. Se realiza el análisis exploratorio (EDA), la ingeniería de características (RFM), la segmentación de clientes con K-Means y se define la estrategia de descuentos.

3.  **`punto_2.ipynb`**
    * **Objetivo:** Responder a la sección "2. EJECUCION SQL" de la prueba.
    * **Proceso:** Se cargan los datos necesarios y se ejecutan las 7 consultas SQL solicitadas, mostrando el código y los resultados de cada una.

## Carpetas de Soporte

* **`/functions`**: Almacena funciones de Python reutilizables que se importan en los notebooks.
* **`/reports`**: Es el destino de las salidas visuales del análisis, como los gráficos y figuras.