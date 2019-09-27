
# Análisis exploratorio del dataset Titanic
##### Práctica final del curso de análisis de datos con Python
Profesor: Gerardo Mathus

---
**Intrucciones: Lee cuidadosamente cada pregunta y escribe el código de Python necesario para contestar cada una.  Deberás contestar el examen en un Jupyter Notebook y, al terminar, deberás subirlo a un nuevo repositorio de github que contenga únicamente los datos a utilizar (ver liga de abajo) y el Jupyter Notebook con tus respuestas**

**Nota: Todas las visualizaciones deberán hacerse con `seaborn`.**

### 1. Importa los datos
Los datos los puedes descargar [de esta liga](https://drive.google.com/file/d/1Ru9l2gfDIyOjJnaor17dOPUGii5SK4mJ/view?usp=sharing) 

Enlace corto: http://tiny.cc/cn9idz

### 2. Observa las  primeras filas de los datos

### 3. ¿Cuántas filas y columnas tiene el dataset?

### 4. ¿Qué columnas tiene el dataset?

### 5. Contesta las siguientes preguntas:
    a) ¿Cuántas variables son de tipo flotante?
    b) ¿Cuántas variables son de tipo entero?
    c) ¿Cuántas variables son de tipo objeto (categóricas)?
    d) ¿Qué columnas y tienen objetos en nulo o faltantes?

### 6. Obten un resumen de estadisticos del dataset para contestar las siguientes  preguntas:
    a) ¿Cuál era la edad promedio de los pasajeros del Titanic?
    b) ¿De cuánto era el `fare` promedio?
    c) ¿Cuántos pasajeros sobrevivieron?

---

## Visualizaciones

### 7. Visualización para valores faltantes
#### Una buena forma visual de observar valores faltantes en columnas es mediante un mapa de calor. Utiliza la función `heatmap` de `seaborn` con  `cmap='flag'` para graficar valores faltantes en cada columna
#### ¿Qué puedes concluir de tu mapa de calor?

### 8. Grafica la matriz de correlación con la función `heatmap` de `seaborn` y los argumentos `cmap='YlGnBu'` y `annot=True`. Posteriormente describe qué hace cada uno de estos argumentos.
#### ¿Qué puedes concluir del mapa de calor de la matriz de correlación?

---

## Exploración de la variable `survived`
La variable `survived` indica si un pasajero subrevivió la tragedia del Titanic o no.
    * 0: No sobrevivió
    * 1: Sí sobrevivió
    
### 9. Haz una gráfica de barras que muestre la cantida de pasajeros que sobreviveron y que no sobreviveron. Utiliza la paleta `'Set1'`

### 10. Imprime el número exacto de pasajeros que sobreviveron y que no sobreviveron

### 11. Haz una gráfica de barras de los pasajeros que sobreviveron y que no sobreviveron introducieron una tercera variable `Sex`. Utiliza la paleta `'Set2'`.
Deberás tener 4 barras: 2 barras (male, female) para 'no sobrevivó' y 2 barras (male, female) para 'sobrevivó

### 12. Haz una gráfica de barras de los pasajeros que sobreviveron y que no sobreviveron introducieron una tercera variable `Pclass`. Utiliza la paleta `'Set2'`.
La variable `Pclass` indica el estatus socioeconómico del pasajero:
- 1 $\rightarrow$ Upper (alta)
- 2 $\rightarrow$ Middle (media)
- 3 $\rightarrow$ Lower (baja)

### 13. Haz una gráfica de barras del número de la variable `SibSp` utilizando la paleta `'Set3'`.
La variable `SibSp` indica la cantida de hermanos del pasajero, y si tenía o no esposo o esposa.

### 14. Haz lo mismo para la bariable `Parch`.
Esta variable indica el número de padres o madres e hijos que viajaban con el pasajero.

### 15. Haz una gráfica de barras que muestre la cantidad de pasajeros que embarcaron en `C` (Cherbourg), `Q` (Queenstown) y `S` (Southampton). Utiliza la paleta que quieras

### 16. Ejecuta el siguiente código y anota tus observaciones


```python
sns.pairplot(data=train, hue ='Survived', diag_kind='hist', height= 3, aspect=0.7,palette='bwr')
```

### 17.  Haz una gráfica de dispersión con un ajuste lineal, y después vuelve a realizar la misma gráfica pero ahora utilizando los parámetros `logistic=True` y `y_jitter=0.3`. Posteriormente describe para qué sirven estos parámetros

### 18. Crea un histograma de la variable `Age` utilizando 10, 20,30,40 y 50 cubetas (bins)

### 19. Crea un histograma de la variable `Fare`. Deberás utilizar la función `dropna()` para elminar valores nulos. Utiliza el color `'darkred'` y experimenta con el número de cubetas hasta que estes satisfecha.

### 20. Crea un *boxplot* de `Pclass` contra `Age` utilizando la paleta `'plasma'` y contesta las siguientes preguntas:
Sin tomar en cuenta *outliers*:
1. En la clase 1, ¿más o menos cuál edad mediana (cuartil 50) de los parajeros?
2. En la clase 2, ¿más o menos cuál es la edad máxima de los pasajeros?
3. En la clase 3, ¿más o menos cuál es la edad en el primer cuartil de los pasajeros?

¿Tus hallazgos coinciden con lo que da la función `describe()` de `pandas`?

### 21. Haz un *boxplot* de la variable `Fare` para detectar/visualizar *outliers*. Utiliza la paleta `Blues`

### 22. Haz un *boxplot* de la variable `Age` para detectar/visualizar *outliers*. Utiliza la paleta `Blues`

