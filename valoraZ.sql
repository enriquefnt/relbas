SELECT Nombre, Apellido, Sexo , 
floor(DATEDIFF(FechaControl, Nacimiento)/365.25) AS años,
floor((DATEDIFF(FechaControl, Nacimiento)%365.25)/30.4375) AS meses,
floor(datediff(FechaControl, Nacimiento) % 30.4375) AS dias, 
Peso, Talla, 
round(ZSCORE(Sexo ,'P',peso, Nacimiento, FechaControl),2) AS ZPE,
round(ZSCORE(Sexo ,'T',talla, Nacimiento, FechaControl),2) AS ZTE,
round(ZSCORE(Sexo ,'I',(peso/(talla*talla)), Nacimiento, FechaControl),2) AS ZIMC

FROM control
right join persona on control.idPersona=persona.idPersona
inner join aopzonas on AOP=idaop ;