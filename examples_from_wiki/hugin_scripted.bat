MD temp


"e:\Hugin\bin\pto_gen" 		-o 		"temp\project.pto" *.jpg
"e:\Hugin\bin\cpfind" 		-o 		"temp\project.pto" --multirow --celeste "temp\project.pto"
REM "e:\Hugin\bin\cpfind" 		-o 		"temp\project.pto" --celeste "temp\project.pto"
"e:\Hugin\bin\cpclean" 		-o 		"temp\project.pto" "temp\project.pto"


REM"e:\Hugin\bin\pto_var" --set" TrX=-56.464036 , TrY=-73.509910, TrZ=98.405626,a=0.005696 , b=-0.021579 , c=0.009606 , d=1-a-b-c" "temp\project.pto"


"e:\Hugin\bin\linefind" 	-o 		"temp\project.pto" "temp\project.pto"
"e:\Hugin\bin\autooptimiser" 	-a -m -l -s -o 	"temp\project.pto" "temp\project.pto"
REM"e:\Hugin\bin\autooptimiser" 	-n -o 		"temp\project.pto" "temp\project.pto"
"e:\Hugin\bin\pano_modify" 	--canvas=AUTO --crop=AUTO -o "temp\project.pto" "temp\project.pto"





"e:\Hugin\bin\nona" -o temp\out -m TIFF_m "temp\project.pto"
"e:\Hugin\bin\enblend" -o panorama.tif "temp\*.tif"

REM del  /s /q temp
REM rmdir  /s /q temp
pause



