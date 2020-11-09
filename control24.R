# Pregunta 2.4 


# (A) Respuesta: matriz convertida a data.frame 

  sintomas_df <- as.data.frame(sintomas)

  #(B) Respuesta: nueva columna con los registro ID
       sintomas_df <- as.data.frame(sintomas)
        id<- rownames(sintomas_df)
        sintomas_df<- cbind(sintomas_df,id)
        sintomas_df


#(C) Respuesta: las personas que presentaron tos y dolor de cabeza son: 494 personas

sintomas_df <- as.data.frame(sintomas)

tiene_sintomas <- filter(sintomas_df,tiene_tos==1 & tiene_dolor_cabeza==1 ) 

 colSums(tiene_sintomas)

    #    temperatura            tiene_tos   tiene_dolor_cabeza tiene_perdida_olfato    tiene_dolor_pecho 
    #         18637.34               494.00               494.00               394.00               278.00 





#(D) Respuesta: 

 
 sintomas_df<- data.frame(sintomas)
 sintomas_df <- mutate(sintomas_df, tiene_fiebre=ifelse(temperatura>37.2,TRUE,FALSE))
