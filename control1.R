

#Control 1

# Carga de casos
  casos <- readRDS("covid.rds")

# Pregunta 1.1 


# (A) Respuesta:Objeto es clase lista que contiene data frames

  class(casos)
   

#----------------------------------------------------------------------------------------

# (B) Respuesta: 3870 elementos

subc_elemt <-  function(caso_tipo) {       
        can_sub <- length(caso_tipo$dia_del_mes)+ length(caso_tipo$total )
         return(can_sub) }

cantidad_mes <-function(mes){  

                can_mes <-  subc_elemt(mes$casos_nuevos_con_sintomas)+
                            subc_elemt(mes$casos_totales)+
                            subc_elemt(mes$casos_recuperados)+
                            subc_elemt(mes$fallecidos)+
                            subc_elemt(mes$casos_activos)+
                            subc_elemt(mes$casos_nuevos_sin_sintomas)+
                            subc_elemt(mes$casos_nuevos_totales)+
                            subc_elemt(mes$casos_activos_por_fd)+
                            subc_elemt(mes$casos_activos_por_fis)+
                            subc_elemt(mes$casos_recuperados_por_fis)+
                            subc_elemt(mes$casos_recuperados_por_fd)+
                            subc_elemt(mes$casos_confirmados_recuperados)+
                            subc_elemt(mes$casos_activos_confirmados)+
                            subc_elemt(mes$casos_probables_acumulados)+
                            subc_elemt(mes$casos_activos_probables)
                            return(can_mes)}

cantidad_mes(casos$mar)+   cantidad_mes(casos$abr) +cantidad_mes(casos$may)+ cantidad_mes(casos$jun)+ cantidad_mes(casos$jul)



#------------------------------------------------------------------------------------------------------------------------------------------------------

# (C) Respuesta:Los nombres de los bjetivos anidados son: mar, abr, may, jun, jul            
        lengths(casos) 
           #mar abr may jun jul 
           #15  15  15  15  15
        lengths(casos$mar) 
          #  casos_nuevos_con_sintomas                 casos_totales             casos_recuperados                    fallecidos                 casos_activos 
          #                         2                             2                             2                             2                             2 
          # casos_nuevos_sin_sintomas          casos_nuevos_totales          casos_activos_por_fd         casos_activos_por_fis     casos_recuperados_por_fis 
          #                         2                             2                             2                             2                             2 
          #  casos_recuperados_por_fd casos_confirmados_recuperados     casos_activos_confirmados    casos_probables_acumulados       casos_activos_probables 
          #                         2                             2                             2                             2                             2    
        lengths(casos$mar$casos_nuevos_con_sintomas)
         #  total dia_del_mes 
         #   30          30 


#------------------------------------------------------------------------------------------------------------------------------------------------------

# (D) Respuesta: Jun es de tippo list y tiene 15 elementos
        class(casos$jul)
        #"list"
        length(casos$jun)
         #15

#------------------------------------------------------------------------------------------------------------------------------------------------------

# (E) Respuesta: Jun es de tipo data.frame y posee dos elementos: total y dia_del_mes

      class(casos$jun$casos_totales)
       #"data.frame"
     lengths(casos$jun$casos_totales)
      #  total dia_del_mes 
       #  30          30 
                



  

