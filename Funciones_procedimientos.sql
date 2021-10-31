
CREATE DEFINER=`root`@`localhost` PROCEDURE `lista_simple`()
BEGIN
SELECT idaop, control.idPersona, control.idcontrol, concat(Nombre, ' ', Apellido) AS Nombre, date_format(FechaControl,"%d/%m/%y") AS FechaCtrl, areaoperativa,
floor(DATEDIFF(FechaControl, Nacimiento)/365.25) AS años,
floor((DATEDIFF(FechaControl, Nacimiento)%365.25)/30.4375) AS meses,
floor(datediff(FechaControl, Nacimiento) % 30.4375) AS dias,Peso, Talla,
if (ZSCORE(Sexo,'P',Peso,Nacimiento,FechaControl) between -6 and 6,ROUND(ZSCORE(Sexo,'P',Peso,Nacimiento,FechaControl),2),"Error") as ZPE,
if (ZSCORE(Sexo,'T',Talla,Nacimiento,FechaControl) between -6 and 6,ROUND(ZSCORE(Sexo,'T',Talla,Nacimiento,FechaControl),2),"Error") as ZTE,
if (ZSCORE(Sexo,'I',(Peso/((Talla/100)*(Talla/100))),Nacimiento,FechaControl) between -6 and 6,ROUND(ZSCORE(Sexo,'I',(Peso/((Talla/100)*(Talla/100))),Nacimiento,FechaControl),2),"Error") as ZIMC
 FROM control
right join persona on control.idPersona=persona.idPersona
inner join aopzonas on AOP=idaop ;
END

CREATE DEFINER=`root`@`localhost` FUNCTION `VALORAÑO`(Nacimiento DATE,FechaControl DATE) RETURNS double
BEGIN
       DECLARE DI INT;DECLARE MI INT;DECLARE AI INT;DECLARE DF INT; DECLARE MF INT;DECLARE AF INT;
       DECLARE DtoIni VARCHAR(3);DECLARE DtoFin VARCHAR(3);DECLARE AñoIni DOUBLE;DECLARE AñoFin DOUBLE;
       DECLARE DifIni DOUBLE;DECLARE DifFin DOUBLE;DECLARE rdoAño DOUBLE;DECLARE AñoMedio DOUBLE;
    
       SET DI=(SELECT DAY(Nacimiento));   #Selecciona el día
       SET MI=(SELECT MONTH (Nacimiento));#Selecciona el mes
       SET AI=(SELECT YEAR(Nacimiento));  #Selecciona el año
       SET DF=(SELECT DAY(FechaControl));
       SET MF=(SELECT MONTH (FechaControl));
       SET AF=(SELECT YEAR(FechaControl));
     
       IF (MI=2) THEN 
         IF (DI=29) THEN  
           SET DI=28; 
         END IF;
       END IF;
       IF (MF=2) THEN 
         IF (DF=29) THEN  
           SET DF=28; 
         END IF;
       END IF;

       SET DtoIni=(CASE MI 
                 WHEN 1 THEN (SELECT En FROM AÑODECIMAL WHERE Dia=DI) 
                 WHEN 2 THEN (SELECT Fb FROM AÑODECIMAL WHERE Dia=DI)
                 WHEN 3 THEN (SELECT Mz FROM AÑODECIMAL WHERE Dia=DI)
                 WHEN 4 THEN (SELECT Ab FROM AÑODECIMAL WHERE Dia=DI) 
                 WHEN 5 THEN (SELECT My FROM AÑODECIMAL WHERE Dia=DI)
                 WHEN 6 THEN (SELECT Jn FROM AÑODECIMAL WHERE Dia=DI)
                 WHEN 7 THEN (SELECT Jl FROM AÑODECIMAL WHERE Dia=DI) 
                 WHEN 8 THEN (SELECT Ag FROM AÑODECIMAL WHERE Dia=DI)
                 WHEN 9 THEN (SELECT Se FROM AÑODECIMAL WHERE Dia=DI)
                 WHEN 10 THEN (SELECT Oc FROM AÑODECIMAL WHERE Dia=DI)
                 WHEN 11 THEN (SELECT Nv FROM AÑODECIMAL WHERE Dia=DI)
                 WHEN 12 THEN (SELECT Dc FROM AÑODECIMAL WHERE Dia=DI)
                 END);

       SET AñoIni=(SELECT AI + (CAST(DtoIni AS UNSIGNED)/1000));

       SET DtoFin=(CASE MF 
                 WHEN 1 THEN (SELECT En FROM AÑODECIMAL WHERE Dia=DF) 
                 WHEN 2 THEN (SELECT Fb FROM AÑODECIMAL WHERE Dia=DF)
                 WHEN 3 THEN (SELECT Mz FROM AÑODECIMAL WHERE Dia=DF)
                 WHEN 4 THEN (SELECT Ab FROM AÑODECIMAL WHERE Dia=DF) 
                 WHEN 5 THEN (SELECT My FROM AÑODECIMAL WHERE Dia=DF)
                 WHEN 6 THEN (SELECT Jn FROM AÑODECIMAL WHERE Dia=DF)
                 WHEN 7 THEN (SELECT Jl FROM AÑODECIMAL WHERE Dia=DF) 
                 WHEN 8 THEN (SELECT Ag FROM AÑODECIMAL WHERE Dia=DF)
                 WHEN 9 THEN (SELECT Se FROM AÑODECIMAL WHERE Dia=DF)
                 WHEN 10 THEN (SELECT Oc FROM AÑODECIMAL WHERE Dia=DF)
                 WHEN 11 THEN (SELECT Nv FROM AÑODECIMAL WHERE Dia=DF)
                 WHEN 12 THEN (SELECT Dc FROM AÑODECIMAL WHERE Dia=DF)
                 END);
     
       SET AñoFin=(SELECT AF + (CAST(DtoFin AS UNSIGNED)/1000)); 
    
       SET AñoMedio=(AñoFin - AñoIni);  

       SET AñoIni=(SELECT MAX(Anio) FROM PESOLONGITUD WHERE Anio<=AñoMedio) ;
    
       SET AñoFin=(SELECT MIN(Anio) FROM PESOLONGITUD WHERE Anio>=AñoMedio);

       IF (AñoIni<AñoFin) THEN

         SET DifIni = AñoMedio - AñoIni;
    
         SET DifFin = AñoFin - AñoMedio;

         IF (DifIni<DifFin) THEN

           SET rdoAño=AñoIni;

         ELSE

             SET rdoAño=AñoFin;

         END IF;

       ELSE

           SET rdoAño=AñoFin;
 
       END IF;

       RETURN rdoAño;

END









CREATE DEFINER=`root`@`localhost` FUNCTION `ZSCORE`(Sexo INT(1),Bus VARCHAR(1), Valor DOUBLE,FechaInicial DATE,FechaFinal DATE) RETURNS double
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


