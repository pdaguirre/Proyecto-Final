#!/bin/bash

# Verificar que se hayan proporcionado archivos como argumentos
if [ "$#" -eq 0 ]; then
  echo "Error: No se proporcionaron archivos fasta."
  exit 1
fi

# Crear la carpeta results si no existe
results_dir="results"
mkdir -p "$results_dir"

# Procesar cada archivo fasta proporcionado como argumento
for file in "$@"; do
  # Verificar si el archivo existe
  if [ ! -f "$file" ]; then
    echo "Error: El archivo $file no existe."
    continue
  fi

  echo "Procesando archivo: $file"

  # Comando para el alineamiento de secuencias
  mafft --auto "$file" > "aln_${file##*/}"

  # Verificar si mafft se ejecutó correctamente
  if [ $? -ne 0 ]; then
    echo "Error: mafft falló para el archivo $file."
    continue
  fi

  # Verificar si el alineamiento contiene el outgroup especificado
  if grep -q "AY843739_Pseudis_minuta_" "aln_${file##*/}"; then
    # Comando para el cronograma con outgroup
    ./iqtree2 -s "aln_${file##/}" -m GTR+R+I -bb 1000 -alrt 1000 -safe -o AY843739_Pseudis_minuta_ --date-tip 0 -safe -nt auto --date-ci 100 --date-root -37.8 -pre "result_${file##/}"
  else
    # Comando para el cronograma sin outgroup
    ./iqtree2 -s "aln_${file##/}" -m GTR+R+I -bb 1000 -alrt 1000 -safe -pre "result_${file##/}"
  fi

  # Verificar si iqtree2 se ejecutó correctamente
  if [ $? -ne 0 ]; then
    echo "Error: iqtree2 falló para el archivo $file."
    continue
  fi

  # Mover los archivos resultantes a la carpeta results
  mv result_${file##/}. "$results_dir/"

  echo "Proceso completado exitosamente para el archivo: $file."
done
