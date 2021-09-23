CREATE DEFINER=`salasituacion`@`%` FUNCTION `ZSCORE`(Sexo VARCHAR (10),Bus VARCHAR(1), Valor DOUBLE,FechaInicial DATE,FechaFinal DATE) RETURNS double
BEGIN
   
     DECLARE Calculo,L,M,S,rdoAño DOUBLE;DECLARE EdadMes INT;
     
      SET rdoAño=(SELECT VALORAÑO(FechaInicial,FechaFinal));      
      
      SET EdadMes=TIMESTAMPDIFF(MONTH,FechaInicial,FechaFinal);

     IF(Sexo='Femenino')THEN

       IF (Bus='P') THEN -- PESO
        
         SET L=(SELECT Lpa FROM PESOLONGITUD WHERE Año=rdoAño);
         SET M=(SELECT Mpa FROM PESOLONGITUD WHERE Año=rdoAño);
         SET S=(SELECT Spa FROM PESOLONGITUD WHERE Año=rdoAño);
        
        ELSEIF (Bus='T') THEN -- LONGITUD
        
             SET L=(SELECT Lta FROM PESOLONGITUD WHERE Año=rdoAño);
             SET M=(SELECT Mta FROM PESOLONGITUD WHERE Año=rdoAño);
             SET S=(SELECT Sta FROM PESOLONGITUD WHERE Año=rdoAño);
             
        ELSEIF (Bus='I') THEN -- IMC
        
              SET L=(SELECT Lia FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);
              SET M=(SELECT Mia FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);
              SET S=(SELECT Sia FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);
              
        ELSEIF (Bus='D') THEN -- PERIMETRO CEFALICO
        
              SET L=(SELECT Lpa FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);
              SET M=(SELECT Mpa FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);
              SET S=(SELECT Spa FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);      
        
        END IF; 

     ELSE

         IF (Bus='P') THEN -- PESO
        
           SET L=(SELECT Lpo FROM PESOLONGITUD WHERE Año=rdoAño);
           SET M=(SELECT Mpo FROM PESOLONGITUD WHERE Año=rdoAño);
           SET S=(SELECT Spo FROM PESOLONGITUD WHERE Año=rdoAño);
        
         ELSEIF (Bus='T') THEN -- LONGITUD
        
             SET L=(SELECT Lto FROM PESOLONGITUD WHERE Año=rdoAño);
             SET M=(SELECT Mto FROM PESOLONGITUD WHERE Año=rdoAño);
             SET S=(SELECT Sto FROM PESOLONGITUD WHERE Año=rdoAño);
             
         ELSEIF (Bus='I') THEN -- IMC
        
             SET L=(SELECT Lio FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);
             SET M=(SELECT Mio FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);
             SET S=(SELECT Sio FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);    
             
         ELSEIF (Bus='D') THEN -- PERIMETRO CEFALICO
        
              SET L=(SELECT Lpo FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);
              SET M=(SELECT Mpo FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);
              SET S=(SELECT Spo FROM TABLAIMCPERICEFA WHERE IdMes=EdadMes);     
        
        END IF; 

     END IF; 

     SET Calculo =(POWER((VALOR/M),L)-1)/(L*S);

     RETURN Calculo ;

END