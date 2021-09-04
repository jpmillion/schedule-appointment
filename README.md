# README
## Ruby version
2.7.3
## Rails
6.1.4.1
## Database
Postgre Sql

## Issues encountered while completing this challenge
Scheduling the appointments was the challenging phase of the assessment. I struggled with a designing a form that would create the appointment instances with the appropiate relationships. Also, toggling the time slot availbilty with the creation of the appointment became difficult. I decided to create a has_one belong_two relationship (time slot has_one appointment; appointment belongs_to a time slot).  This relationship allowed for the coach's time slots to become links that direct a user to create an appointment directly related to a time slot.

## Extra Credit
I added a feature to cancel an appoitment.  When an appointment is cancelled the time slot availablity is updated so that it is eligible for a new appointment.

