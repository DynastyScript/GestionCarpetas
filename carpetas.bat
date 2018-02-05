@echo off
Title Programa de gestion de carpetas
echo                                            ===============================
echo                                          ======= GESTION DE CARPETAS =======
echo                                          =                                 =
echo                                          ===========DYNASTY SCRIPT==========
echo                                           ================================
echo 1.Crear Carpetas
echo 2.Esconder Carpetas
echo 3.Revelar Carpetas
echo 4.Salir
set/p a=Que quieres hacer?=
if %a%==1 (goto :1)
if %a%==2 (goto :2)
if %a%==3 (goto :3)
if %a%==4 (exit)


:1
set/p carpeta=Que nombre quieres para tu carpeta?=
md %carpeta%
set/p esconder=Quieres esconder la carpeta?=
if %esconder%==si (attrib +h %carpeta% & msg * Carpeta "%carpeta%" escondida correctamente) else msg * "Carpeta no escondida"
cls
goto cero
:2
set /p nombre=Nombre de la carpeta que quieres esconder=
attrib +h %nombre%
msg * "Carpeta escondida correctamente"
:3
set /p recuperar=Nombre de la carpeta que esta escondida=
if exist %recuperar% (set/p pin=Cual es el pin) else msg * "La carpeta no existe" & goto cero
if %pin%==1234 (attrib -h %recuperar% & msg * Carpeta recuperada correctamente) else msg * "La carpeta no ha sido recuperada correctamente" & goto cero
cls
goto cero
