# #79 Travelers Back Home (Google, Medium)

## Problem
Count how many travelers ended back in their home city based on travel history (start_city → end_city by date).
Assume at most one trip per traveler per day.

## Approach
1) Rank trips per traveler by date (first and last).
2) Extract home_city from first trip start_city and final_city from last trip end_city.
3) Count travelers where home_city = final_city.

## Expected output
travelers_back_home = 3
