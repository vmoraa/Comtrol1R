# Pregunta 1.2


# (A) Respuesta:Los casos activos durante el mes de marzo son 1117
      lista1 <- casos[["mar"]][["casos_activos"]]
      filter(lista1,dia_del_mes==25)
      #total dia_del_mes
      # 1  1117          25

#--------------------------------------------------------------------

# (B) Respuesta: generar variavles de tipo data.frame de casos totales de cada mes

   totales_marzo <- casos[["mar"]][["casos_totales"]]
   totales_abril <- casos[["abr"]][["casos_totales"]]
   totales_mayo <- casos[["may"]][["casos_totales"]]
   totales_junio <-casos[["jun"]][["casos_totales"]]
   totales_julio <-casos[["jul"]][["casos_totales"]]


#--------------------------------------------------------------------

# (C) Respuesta: generar variavles de tipo data.frame de casos totales de cada mes

mes <- rep(c("marzo"),length(totales_marzo$total)) 
totales_marzo <- cbind(casos[["mar"]][["casos_totales"]],mes)
totales_marzo

mes <- rep(c("abril"),length(totales_abril$total)) 
totales_abril <- cbind(casos[["abr"]][["casos_totales"]],mes)
totales_abril

mes <- rep(c("mayo"),length(totales_mayo$total)) 
totales_mayo <- cbind(casos[["may"]][["casos_totales"]],mes)
totales_mayo

mes <- rep(c("junio"),length(totales_junio$total)) 
totales_junio <- cbind(casos[["jun"]][["casos_totales"]],mes)
totales_junio

mes <- rep(c("julio"),length(totales_julio$total)) 
totales_julio <- cbind(casos[["jul"]][["casos_totales"]],mes)
totales_julio




#--------------------------------------------------------------------

# (D) Respuesta: Generar nueva columna llamada casos_diarios con los datos de casos_nuevos totales de cada mes


#--------------------------marzo--------------------------------------------------------

mes <- rep(c("marzo"),length(totales_marzo$total)) 
totales_marzo <- cbind(casos[["mar"]][["casos_totales"]],mes)
casos_diarios <- c(casos[["mar"]][["casos_nuevos_totales"]][["total"]])
totales_marzo <- cbind(casos[["mar"]][["casos_totales"]],mes,casos_diarios)


#----------------------------abril------------------------------------------------------

mes <- rep(c("abril"),length(totales_abril$total)) 
totales_abril <- cbind(casos[["abr"]][["casos_totales"]],mes)
casos_diarios <- c(casos[["abr"]][["casos_nuevos_totales"]][["total"]])
totales_abril <- cbind(casos[["abr"]][["casos_totales"]],mes,casos_diarios)

#--------------------------------mayo------------------------------------------------

mes <- rep(c("mayo"),length(totales_mayo$total)) 
totales_mayo <- cbind(casos[["may"]][["casos_totales"]],mes)
casos_diarios <- c(casos[["may"]][["casos_nuevos_totales"]][["total"]])
totales_mayo <- cbind(casos[["may"]][["casos_totales"]],mes,casos_diarios)



#-----------------------------------junio---------------------------------------------

mes <- rep(c("junio"),length(totales_junio$total)) 
totales_junio <- cbind(casos[["jun"]][["casos_totales"]],mes)
casos_diarios <- c(casos[["jun"]][["casos_nuevos_totales"]][["total"]])
totales_junio <- cbind(casos[["jun"]][["casos_totales"]],mes,casos_diarios)


#--------------------------------------julio------------------------------------------


mes <- rep(c("julio"),length(totales_julio$total)) 
totales_julio <- cbind(casos[["jul"]][["casos_totales"]],mes)
casos_diarios <- c(casos[["jul"]][["casos_nuevos_totales"]][["total"]])
totales_julio <- cbind(casos[["jul"]][["casos_totales"]],mes,casos_diarios)



#---------------------------------------------------------------------------------