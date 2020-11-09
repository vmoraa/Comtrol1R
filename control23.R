
#Pregunta 2.3 

#(A)Respuesta: 229 pesonas tienen los 4 sintomas 
sintomas2 <- as.data.frame(sintomas)

tiene_sintomas <- filter(sintomas,tiene_tos==1 & tiene_dolor_cabeza==1 & tiene_perdida_olfato==1 & tiene_dolor_pecho==1) 

 colSums(tiene_sintomas) # 4 sintomas= 229
        #  temperatura            tiene_tos   tiene_dolor_cabeza tiene_perdida_olfato    tiene_dolor_pecho 
        #     8757.134              229.000              229.000              229.000              229.000 
#----------------------------------------------------------------------------------------------------------------


#(B)Respuesta:  608 personas tienen tos

    tiene_tos <- filter(sintomas2,tiene_tos==1)
       colSums(tiene_tos) #tos= 608
        #  temperatura            tiene_tos   tiene_dolor_cabeza tiene_perdida_olfato    tiene_dolor_pecho 
        #     22933.02               608.00               494.00               479.00               337.00

        #----------------------------------------------------------------------------------------------------------------


#(C)Respuesta:  El sintomas mas frecuente es: dolor de cabeza con 750 casos
     
      tiene_tos <- filter(sintomas2,tiene_tos==1)  # tos= 608
       colSums(tiene_tos)
        #  temperatura            tiene_tos   tiene_dolor_cabeza tiene_perdida_olfato    tiene_dolor_pecho 
        #     22933.02               608.00               494.00               479.00               337.00
       

    dolor_cabeza <- filter(sintomas2,tiene_dolor_cabeza==1)  # dolor cabeza= 750
       colSums(dolor_cabeza)
        #  temperatura            tiene_tos   tiene_dolor_cabeza tiene_perdida_olfato    tiene_dolor_pecho 
        #     28100.72               494.00               750.00               471.00               349.00 

      
       perdida_olfato <- filter(sintomas2,tiene_perdida_olfato==1) # perdida olfato = 673
      colSums(perdida_olfato)
        #  temperatura            tiene_tos   tiene_dolor_cabeza tiene_perdida_olfato    tiene_dolor_pecho 
        #     25221.84               479.00               471.00               673.00               324.00 

       dolor_pecho <- filter(sintomas2,tiene_dolor_pecho==1) # dolor de pecho= 519
          colSums(dolor_pecho)
        #    temperatura            tiene_tos   tiene_dolor_cabeza tiene_perdida_olfato    tiene_dolor_pecho 
        #      19781.9                337.0                349.0                324.0                519.0 