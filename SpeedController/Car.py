class Car:
    def __init__(self):
        self.speed = 0
        self.speed_limit = None
    
    def set_speed_limit(self, limit):
        print(f"Setting speed limit to {limit} [km/h]")
        self.speed_limit = int(limit)

    def reset_speed(self):
        print("Ressetting speed to 0 [km/h]")
        self.speed = 0

    def car_is_moving(self):
        print("The car is moving")
        self.speed = self.speed_limit - 3

    def speed_is_within_limit(self):
        lower_limit = self.speed_limit - 3
        upper_limit = self.speed_limit
        print(f"Checking if current speed {self.speed} [km/h] is whithin the speed limit")
        assert lower_limit <= self.speed <= upper_limit, f"Current speed {self.speed} [km/h] is not with the speed limit"

    def decelerate_car(self):
        print("decelerating the car")
        self.speed -= 20

    def speed_decreased_by(self, decrease_rate):
        decreased_speed = self.speed + int(decrease_rate)
        assert decreased_speed > 0, "Speed decrease is not possible as it would be in the negative range"
        print(f"Speed has decreased by {decrease_rate} [km/h]")


### This section is to berify the functioning of the class ###
def test_car_behavior():
    #counter = 0

    #while True:
        #your 
        # in here you could use a random fnc which check the items of an speed limit LIST 
        #break #when a condition is true  e.g. if counter = 10000

    
    tesla = Car()
    tesla.set_speed_limit(70)
    tesla.car_is_moving()
    tesla.speed_is_within_limit()

    tesla.reset_speed()

#if __name__ == "__main__":
    #test_car_behavior()

test_car_behavior()

### END ->  This section is to berify the functioning of the class ###