-- Keep a log of any SQL queries you execute as you solve the mystery.

-- Find crime scene description to get more informations
SELECT description FROM crime_scene_reports
WHERE month = 7 AND day = 28 AND year = 2023 AND street = 'Humphrey Street';

-- Find transcripts from July 28, 2023, that mention the word 'bakery' to get more informations from the Witnesses
SELECT transcript FROM interviews
WHERE month = 7 AND day = 28 AND year = 2023 AND transcript LIKE '%bakery%';

-- from the first witnesse i know the thief drove away with his car after the theft
-- Finding the license plates of the cars the left the crime scene between 10:15 and 10:25, and match them with the names of the owners
SELECT bakery_security_logs.activity, bakery_security_logs.license_plate, people.name FROM bakery_security_logs
JOIN people ON bakery_security_logs.license_plate = people.license_plate
WHERE bakery_security_logs.year = 2023
AND bakery_security_logs.month = 7
AND bakery_security_logs.day = 28
AND bakery_security_logs.hour = 10
AND bakery_security_logs.minute >= 15
AND bakery_security_logs.minute <= 25;

-- from the second witness i know the thief made a withdrawal at the Leggett Street ATM on July 28, 2023
-- im gonna look for all the possible names of people that made this withdrawal in that specific time
SELECT people.name, atm_transactions.transaction_type FROM people
JOIN bank_accounts ON  bank_accounts.person_id = people.id
JOIN atm_transactions ON atm_transactions.account_number = bank_accounts.account_number
WHERE atm_transactions.year = 2023
AND atm_transactions.month = 7
AND atm_transactions.day = 28
AND atm_transactions.atm_location = 'Leggett Street'
AND atm_transactions.transaction_type = 'withdraw';

-- from the 3rd witness i know that there was a phone call was involved for less that 60 sec
-- finding names of people that made that phone call in that part of day and also the name of the receivers
SELECT p1.name AS caller_name, p2.name AS receiver_name
FROM phone_calls
JOIN people AS p1 ON phone_calls.caller = p1.phone_number
JOIN people AS p2 ON phone_calls.receiver = p2.phone_number
WHERE year = 2023 AND month = 7 AND day = 28 AND duration < 60;

-- the witness heard the caller planning to take the earliest flight tomorrow
-- finding the the earliest flight on July 29, 2023
SELECT id, hour, minute, origin_airport_id, destination_airport_id FROM flights
WHERE year = 2023 AND month = 7 AND day = 29
ORDER BY hour ASC LIMIT 1;

-- i know the id of both the origin_airport and destination_airport, by looking at the aiports table i can know the name of the city of each airport
-- origin_airport is in Fiftyville and destination_airport is in New York City
SELECT * FROM airports;

-- now that i know where the thief escaped to, i can get a list of passengers that took that flight to new york city
SELECT flights.destination_airport_id, people.name FROM people
JOIN passengers ON people.passport_number = passengers.passport_number
JOIN flights ON flights.id = passengers.flight_id
WHERE flights.id = 36;

-- now we can bring all together and find the name of thief that is repeated in all of these tables, we can find the name of the ACCOMPLICE just by looking at who the thief called
SELECT people.name FROM people WHERE name IN
(SELECT people.name FROM people
JOIN passengers ON people.passport_number = passengers.passport_number
JOIN flights ON flights.id = passengers.flight_id
WHERE flights.id = 36)
AND name IN
(SELECT p1.name AS caller_name FROM phone_calls
JOIN people AS p1 ON phone_calls.caller = p1.phone_number
WHERE year = 2023 AND month = 7 AND day = 28 AND duration < 60)
AND name IN
(SELECT people.name FROM people
JOIN bank_accounts ON  bank_accounts.person_id = people.id
JOIN atm_transactions ON atm_transactions.account_number = bank_accounts.account_number
WHERE atm_transactions.year = 2023
AND atm_transactions.month = 7
AND atm_transactions.day = 28
AND atm_transactions.atm_location = 'Leggett Street'
AND atm_transactions.transaction_type = 'withdraw')
AND name IN
(SELECT people.name FROM bakery_security_logs
JOIN people ON bakery_security_logs.license_plate = people.license_plate
WHERE bakery_security_logs.year = 2023
AND bakery_security_logs.month = 7
AND bakery_security_logs.day = 28
AND bakery_security_logs.hour = 10
AND bakery_security_logs.minute >= 15
AND bakery_security_logs.minute <= 25);
