//
//  main.swift
//  1l_ChernikovOleg
//
//  Created by Олег Черников on 16.02.2022.
//

import Foundation

print("Hello, World!")


//first task
//Решить квадратное уравнение.

print("Enter first number: ")

if let input = readLine()
{
    if let a = Double(input)
    {
        print("Enter second number: ")
        if let input = readLine()
        {
            if let b = Double(input)
            {
                print("Enter third number: ")
                if let input = readLine()
                {
                    if let c = Double(input)
                    {
                        let D: Double = b*b-4*a*c
                        switch D{
                        case 1...:
                            let firX = (-b+sqrt(D))/(2*a)
                            let secX = (-b-sqrt(D))/(2*a)
                            print("\(firX) \(secX)")
                        case 0:
                            let firX = (-b)/(2*a)
                            print(firX)
                        default:
                            print ("No answer")
                        }
                    }
                    else{
                        print("Entered input is \(input) of the type:\(type(of: input))")
                    }
                }
            }
            else{
                print("Entered input is \(input) of the type:\(type(of: input))")
            }
        }
    }
    else{
        print("Entered input is \(input) of the type:\(type(of: input))")
    }
}

//second task
//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
print("-----------------------------------------")
print("Enter first leg: ")

if let input = readLine()
{
    if let a = Double(input)
    {
        print("Enter second leg: ")
        if let input = readLine()
        {
            if let b = Double(input)
            {
                let c:Double = sqrt(a*a+b*b)
                let S:Double = (a * b)/2
                let P:Double = a + b + c
                print("hypotenuse:\(c) area:\(S) perimeter:\(P)")
            }
            else{
                print("Entered input is \(input) of the type:\(type(of: input))")
            }
        }
    }
    else{
            print("Entered input is \(input) of the type:\(type(of: input))")
    }
}

//third task
//Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через                             5 лет.
print("-----------------------------------------")


print("Enter your deposit: ")

if let input = readLine()
{
    if var deposit = Double(input)
    {
        print("Enter yearly percent: ")
        if let input = readLine()
        {
            if let yearly = Double(input)
            {
                for _ in 1...5{
                    deposit += (deposit/100)*yearly
                }
                print(deposit)
            }
            else{
                print("Entered input is \(input) of the type:\(type(of: input))")
            }
        }
    }
    else{
        print("Entered input is \(input) of the type:\(type(of: input))")
    }
}
