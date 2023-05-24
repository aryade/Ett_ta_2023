*** Settings ***
Library  Car.py   # WITH NAME    tesla

*** Keywords ***
creating an object

    Car.Set Speed Limit    70
    Car.Car Is Moving
    Car.Speed Is Within Limit

    Car.Set Speed Limit    50
    Car.Decelerate Car
    Car.speed_decreased_by      15