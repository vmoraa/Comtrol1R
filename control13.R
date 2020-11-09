# Pregunta 1.3


# (A) Respuesta: generar variable con cassos hisotricos 

       casos_hist <-rbind(totales_marzo,totales_abril,totales_mayo,totales_junio,totales_julio)

#--------------------------------------------------------------------------------------------------
 # (B) Respuesta: 2120.3 casos en promedio diarios, desde el 03 de marzo hasta el 08 de julio

     filtro_mes <- filter(casos_hist,  dia_del_mes>2)
     mean(filtro_mes$casos_diarios)
      #2120.3


#--------------------------------------------------------------------------------------------------

# (C) Respuesta: promedio casos diarios en cada mes: marzo= 91.26667, abril= 442.8333, mayo=2698.871, junio= 4942.767 y julio= 2961.25
 

   p_diario_cada_mes <- function(mes_busqueda) {       
                                 mes_filtro <- filter(casos_hist,mes==mes_busqueda)
                                 promedio_mes <-  mean(mes_filtro$casos_diarios)
                                 return(promedio_mes) }

   p_diario_cada_mes("marzo")
  #   91.26667
   p_diario_cada_mes("abril")
  #  442.8333
   p_diario_cada_mes("mayo")
  #   2698.871
   p_diario_cada_mes("junio")
  #   4942.767
   p_diario_cada_mes("julio")
   #  2961.25
   

#--------------------------------------------------------------------------------------------------
