# Unidad III: Análisis y diseño de algoritmos en Python

## Python
[Python](https://python.org) es un lenguaje de programación orientado a objetos desarrollo a finales de la década de los 80s. En los últimos años, Python se ha vuelto sumamente popular, tanto así que ahora se considera la *lingua franca* de la ciencia de datos. Pueden leer más de Python en su página de [Wikipedia](https://es.wikipedia.org/wiki/Python).


Python es un languaje de intérprete. Esto quiere decir que los programas no se compilan a lenguaje de máquina. La ventaja de esto es que podemos correr, testear y debuggear nuestro código muy fácil y rápidamente.

Python es open-source y multiplataforma, lo cual significa que podemos correr un programa de python en cualquier sistema operativo.

Python es muy fácil de aprender y de enseñar. Gracias a su sintaxis simple - y concreta - podemos enfocarnos más en la lógica de nuestros programas que en aprender sintaxis y reglas tediosas.

---

A continuación se muestran el código en **`C#`** de un programa que pide al usuario su edad y éste determina si el usuario es mayor de edad o no. Posteriormente se muestar el mismo programa pero en código de **`Python`**

#### C#
```
using System;
namespace HolaMundo
{
    public static void Main(string[] args) 
    {
        Console.WriteLine("Hola Mundo!");

        //pedir edad
        Console.Write("Dame tu edad: ");

        //leer edad
        int edad = int.parse(Console.ReadLine());

        if (edad >= 18) 
        {
            Console.WriteLine("Eres mayor de edad.");
        }
        else 
        {
            Console.WriteLine("Eres menor de edad.");
        }
    }
}
```
#### Python
```
print("Hola mundo")
//pedir y leer edad
edad = int(input("Dame tu edad: "))

if edad >= 18:
    print("Eres mayor de edad.")
else:
    print("Eres menor de edad.")
```


