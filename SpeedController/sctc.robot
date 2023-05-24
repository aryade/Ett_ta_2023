*** Settings ***
Library  Car.py    WITH NAME    volkswagen
Library    String

*** Variables ***
@{SPEED_LIMIT}    30    40    60    70    80    100    120    
${Current_speed_limit}    70



${var1}    198
${var2}    I am an STRING

*** Test Cases ***
#Testing an object
    #creating an object

Test passing with 2 variables arguments
    I am just printing to the log and console 2 passed arguments    ${var1}    ${var2}            #I am var1     I am var 2
Testing an for Loop
    creating an object For Loop

 Testing an While Loop
    creating an object While Loop    120
*** Keywords ***
creating an object
    
creating an object For Loop

    FOR    ${Current_speed_limit}    IN  @{SPEED_LIMIT}
       Log To Console   ${Current_speed_limit}
    END

creating an object While Loop
    [Arguments]   ${SPEED_LIMIT}     #${i}
    #${counter}=    Set Variable    0
    ${limit}=    Set Variable    0

    WHILE  ${limit} <= ${SPEED_LIMIT} 
            Log To Console    ${limit}
            ${limit}    Evaluate    ${limit}+10

        
    END
     
    
   
   #WHILE    ${counter} < ${i}
           #Log To Console    ${counter}
           #${counter}    Evaluate    ${counter}+2

   #END
   #FOR    ${Current_speed_limit}    IN RANGE   ${SPEED_LIMIT}
       #Log    ${Current_speed_limit}
       #Exit For Loop If    ${Current_speed_limit} == 30
        
    #volkswagen.Set Speed Limit    ${Current_speed_limit} 
    #volkswagen.Car Is Moving
    #volkswagen.Speed Is Within Limit

    #END

    
    #volkswagen.Reset Speed

    #volkswagen.Set Speed Limit    50
    #volkswagen.Decelerate Car
    #volkswagen.speed_decreased_by      15

I am just printing to the log and console 2 passed arguments
    [Arguments]    ${var1}     ${var2}
    Log     ${var1}
    Log     ${var2}
    Log To Console    ${var1} ${var2} 
    #Log To Console    ${var2}  