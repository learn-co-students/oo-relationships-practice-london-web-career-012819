# Level: Easy

## Deliverables
You are building an app for a Lyft/Uber competitor
- your models are passengers, drivers, rides
  - a passenger has many rides
  - a driver has many rides
  - a ride belongs to a passenger and a driver
    - a ride is initialized with a distance (as a float)
Write out the relationships using has_many, belongs_to and has_many_through. Create the necessary methods to connect these classes.

#### Passenger
- #drivers [x]
  - returns all drivers a passenger has ridden with
- #rides [x]
  - returns all rides a passenger has been on
- .all [x]
  - returns an array of all passengers
- #total_distance [x]
  - should calculate the total distance the passenger has travelled with the service
- .premium_members [x]
  - should find all passengers who have travelled over 100 miles with the service

#### Driver
- #passengers [x]
  - returns all passengers a driver has had
- #rides [x]
  - returns all rides a driver has made
- .all [x]
  - returns an array of all drivers
- .mileage_cap(distance) [x]
  - takes an argument of a distance (float) and returns all drivers who have exceeded that mileage

#### Ride
- #passenger [x]
  - returns the passenger object for that ride
- #driver [x]
  - returns the driver object for that ride
- .average_distance [x]
  - should find the average distance of all rides
