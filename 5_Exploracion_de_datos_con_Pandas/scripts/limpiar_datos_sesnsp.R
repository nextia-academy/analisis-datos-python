library(tidyverse)
datos <- read_csv('sesnsp.csv', col_names = TRUE, col_types = NULL, locale(encoding = 'iso-8859-1'))
datos_long <- gather(datos, nombre_mes, frecuencia, Enero:Diciembre)
nombres_meses <- datos_long$nombre_mes %>% unique()
meses <- tibble(nombre=nombres_meses)
meses <- mutate(meses, numero_mes=row_number())
datos_long$mes <- meses$numero_mes[match(datos_long$nombre_mes, meses$nombre)]
datos_tidy <- datos_long %>%
  filter(!is.na(frecuencia))

datos_tidy <-datos_tidy %>% rename(
  anio="Año",
  clave_entidad=Clave_Ent,
  entidad=Entidad,
  clave_municipio="Cve. Municipio",
  municipio=Municipio,
  tipo_delito="Tipo de delito",
  subtipo_delito="Subtipo de delito"
)

datos_tidy <- datos_tidy %>% select(anio, clave_entidad, entidad, clave_municipio, municipio, tipo_delito, subtipo_delito, frecuencia, mes)

datos_tidy <- datos_tidy[c("anio", "mes","clave_entidad","entidad","clave_municipio","municipio","tipo_delito","subtipo_delito","frecuencia")]


write.csv(datos_tidy, "delitos", fileEncoding = "UTF-8", row.names = F)
