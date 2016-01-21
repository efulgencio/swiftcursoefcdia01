//
//  ViewController.swift
//  SwiftcursoefcDia01
//
//  Created by eduardo fulgencio on 19/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

import UIKit


/*
Objetivos día 01
- Declarar tipos not nullable
- Tipos integer

*/

class ViewController: UIViewController {

    // Declarando constantes y variables
    let maximumNumberOfLoginAttempts = 10
    var currentLoginAttempt = 0
    // En una solo línea
    var x = 0.0, y = 0.0, z = 0.0
    // Puedes indicar en la declaración que tipo se asigna explicito
    var welcomeMessage: String = "Contenido"

    // Si declaras una constante o variable de un cierto tipo, no se puede redeclarar
    // otra vez con el mismo tipo, cambiar de tipo
    
/* Comentario

*/
    // Integers
    // Son números sin parte fraccional, como 42, -23
    // Swift suministra enteros con signo o sin signo, 8, 16, 32, 64
    // UInt8, Int32

    // Max i mínimo de un UInt8
    let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
    let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8”
    
    // Int
    // En plataforma 32-bit, Int es igual que Int32
    // En plataforma 64-bit, Int es isugal que Int64
    
    // UInt
    // En plataforma 32-bit, Int es igual que UInt32
    // En plataforma 64-bit, Int es isugal que UInt64
    
    // Floating-Point Numbers
    // Floating-point son números con una parte fraccionada, como  3.14159, 0.1, y -273.15

    // Double representa un número 64-bit floating-point.
    // Float representa un número 32-bit floating-point.
    
    // Double tiene una precisión de al menos 15 dígitos decimales,
    // mientras que la precisión de un Float puede ser poco más de 6 dígitos decimales.
    
    
    // Type Safety and Type Inference
    // Swift es un lenguaje type-safe. Un type-safe language apremia a ser claro en los tipos de valores. 
    // Si el código espera un String, no puedes pasarle un Int de forma erronea.
    // Swift chequea los tipos cuando compila el código y señala los errors de asignación de tipo.
    
    // Si no se asigna el tipo, Swift utiliza type-inference para trabajar con el tipo adecuado.
    // type-inference es útil cuando declaramos una constante o variable con un valor inicial
    
    let typeInference = 42
    // typeInference es asignado a un tipo Int
    
    let pi = 3.14159
    // pi es asingnado un typo Doubel to be of type Double
    
    // Conversión de tipos numéricos
    // Dependiendo del tipo numérico puede almacenar un rango de valores.
    // Int8 puede almacenar números de -128 a 127
    // UInt8 puede almacenar números entre 0 a 255
    // Un número que no se puede asignar a una variable o constante es reportado como error en tiempo de ejecución
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Se puede imprimir el contenido
        print("The current value of friendlyWelcome is \(welcomeMessage)")
        
        // let cannotBeNegative: UInt8 = -1
        // UInt8 no puede ser un número negativo, en tiempo de compilación dara error
        // let tooBig: Int8 = Int8.max + 1
        // Int8 no puede almacenar una valor superior a su máximo
        // Para convertir un específico número a otro tipo, inicializar un nuevo número con el tipo deseado.
        // Int conversión
        let primero: UInt16 = 2000
        let uno: UInt8 = 1
        let dosmilUno = primero + UInt16(uno)
        print("The current value of friendlyWelcome is \(dosmilUno)")

        // Convertir Integer y Floating-Point
        // La conversión entre integer y floating-point numéricos debe de hacerse de forma explicita
        // Float conversión
        let three = 3
        let pointOneFourOneFiveNine = 0.14159
        
        // El valor de la constante three es utilizada para crear un nuevo valor de tipo Double
        let pi = Double(three) + pointOneFourOneFiveNine
        // pi equals 3.14159, and is inferred to be of type Double”
        print("The current value of friendlyWelcome is \(pi)")
        
        // Convertir de Floating-point a Integer
        // siempre se debe de hacer de forma explicita, un tipo Integer puede ser inicializado  oun un valor Double o Float
        let enteroPi = Int(pi)
        // integerPi equivale a 3, es convertido en un tipo Int
         print("The current value of friendlyWelcome is \(enteroPi)")
        // El valor Floating-point es truncado cuando se inicializa como nuevo entero. 4.75 será 4. Y -3.9 será -3.

        // Type Aliases
        // Type aliases define un nombre alternativo a un tipo existente. Es útil cuando te quieres referir 
        // a un tipo por nombre en un contexto más apropiado.
        
        typealias AudioSample = UInt16
        var maxAmplitudeFound = AudioSample.min
        // maxAmplitudeFound is now 0”
        
        // Booleans
        // Swift tiene un tipo Boolean llamado Bool, solo puede ser true o false
        let orangesAreOrange = true
        let turnipsAreDelicious = false
        // orangesAreOrange and turnipsAreDelicious han sido definidos como Bool ya que han sido inicializados con un valor Boolean

        // Boolean son útiles para trabajar con condicionales
        if turnipsAreDelicious {
            print("Mmm, tasty turnips!")
        } else {
            print("Eww, turnips are horrible.")
        }
        
        // Swift’s type safety prevents non-Boolean values from being substituted for Bool. The following example reports a compile-time error:
        /*
        let i = 1
        if i {
            // this example will not compile, and will report an error
        }
        */
        // una alternativa es 
        let i = 1
        if i == 1 {
            // this example will compile successfully
        }
        
     
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

