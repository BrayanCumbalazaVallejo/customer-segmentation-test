import pandas as pd
import os

def _extraer_y_guardar_tablas(df_hoja, nombre_hoja, ruta_salida):
    columnas_vacias = df_hoja.columns[df_hoja.isna().all()].tolist()
    limites = [-1] + columnas_vacias + [df_hoja.shape[1]]
    contador_tablas = 0

    print(f"--- Procesando hoja: {nombre_hoja} ---")
    
    for i in range(len(limites) - 1):
        col_inicio = limites[i] + 1
        col_fin = limites[i+1]
        
        if col_inicio >= col_fin:
            continue
            
        df_tabla = df_hoja.iloc[:, col_inicio:col_fin]
        df_tabla.dropna(how='all', axis=0, inplace=True)
        
        if df_tabla.empty:
            continue
            
        primer_indice_valido = df_tabla.first_valid_index()
        if primer_indice_valido is not None:
            nuevo_encabezado = df_tabla.loc[primer_indice_valido]
            df_tabla = df_tabla.loc[primer_indice_valido:].copy()
            df_tabla.columns = nuevo_encabezado
            if df_tabla.iloc[0].equals(df_tabla.columns):
                df_tabla = df_tabla.iloc[1:]
            df_tabla.reset_index(drop=True, inplace=True)
        
        contador_tablas += 1
        nombre_csv = f"{nombre_hoja}_tabla_{contador_tablas}.csv"
        ruta_csv = os.path.join(ruta_salida, nombre_csv)
        df_tabla.to_csv(ruta_csv, index=False)
        print(f"✅ Tabla {contador_tablas} identificada y guardada en: {nombre_csv}")

def convert_excel_to_csv(input_path, output_path, target_sheet_name="SQL"):
    excel_files = [f for f in os.listdir(input_path) if f.endswith(('.xlsx', '.xls'))]
    
    if not excel_files:
        print(f"No se encontraron archivos Excel en la ruta: {input_path}")
        return False
        
    file_name = excel_files[0]
    full_path = os.path.join(input_path, file_name)
    
    os.makedirs(output_path, exist_ok=True)
    
    excel_file = pd.ExcelFile(full_path)
    
    for sheet_name in excel_file.sheet_names:
        if sheet_name == target_sheet_name:
            df = pd.read_excel(full_path, sheet_name=sheet_name, header=None)
            _extraer_y_guardar_tablas(df, sheet_name, output_path)
        else:
            print(f"--- Procesando hoja simple: {sheet_name} ---")
            df = pd.read_excel(full_path, sheet_name=sheet_name)
            csv_name = f"{sheet_name}.csv"
            csv_path = os.path.join(output_path, csv_name)
            df.to_csv(csv_path, index=False)
            print(f"Hoja simple guardada en: {csv_name}")
            
    return True