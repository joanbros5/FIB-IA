CLASS_INPUT =	./main/java/SmartCity/*.java	

CLASS_OUTPUT =	../out/SmartCity

JAR1 = "AIMA.jar"
JAR2 = "Comparticion.jar"

default: 
	javac -cp ".;*" -d ..\out\ .\main\java\SmartCity\*.java -Xlint