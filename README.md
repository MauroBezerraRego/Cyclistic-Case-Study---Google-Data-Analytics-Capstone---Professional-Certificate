# Cyclistic-Case-Study--Google-Data-Analytics-Capstone---Professional-Certificate

## Introduction

In this case study, I analised data from a fictional bike-share company called Cyclistic, based in Chicago. I am collaborating with the marketing analyst team members on behalf of the company. Cyclistic’s director of marketing believes that the company’s future success depends on maximizing the number of annual memberships. Therefore, we need to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, the team will design a new marketing strategy to convert casual riders into annual members.
To answer the business questions, I will follow the steps of the data analysis process: Ask, Prepare, Process, Analyze, Share, and Act.

## About the company

  In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geo-tracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system at any time.	Until now, Cyclistic’s marketing strategy has relied on building general awareness and appealing to broad consumer segments. One approach that helped make this possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders, while customers who purchase annual memberships are Cyclistic members. Cyclistic’s financial analysts have concluded that annual members are much more profitable than casual riders.
  
  Although pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a strong opportunity to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs. Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members.
To do that, however, the team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could influence their marketing tactics. Moreno and her team are interested in analyzing Cyclistic’s historical bike trip data to identify trends.

## Ask

  The business task in this case is to devise marketing strategies to convert casual riders into members. To achieve this, three questions will guide the future marketing program:

1.	How do annual members and casual riders use Cyclistic bikes differently?
2.	Why would casual riders buy Cyclistic annual memberships?
3.	How can Cyclistic use digital media to influence casual riders to become members?
   
  The director of marketing has assigned me the first question to answer:  How do annual members and casual riders use Cyclistic bikes differently?

## Prepare

  I used Cyclistic’s historical trip data to analyze and identify trends from August 2024 to July 2025, which can be downloaded from divvy_tripdata. There are 12 files in CSV format, each including 13 columns:
•	ride_id
•	rideable_type (bike type)
•	started_at (start time and date)
•	ended_at (end time and date)
•	start_station_name
•	start_station_id
•	end_station_name
•	end_station_id
•	start_lat (start station latitude)
•	start_lng (start station longitude)
•	end_lat (end station latitude)
•	end_lng (end station longitude)
•	member_casual (member or casual rider)

## Process

  The 12 CSV files were imported into SQL Server Management Studio. A table named “data2425” was created, containing 5,611,500 rows of data for the entire year.


![IMAGE 1](https://github.com/user-attachments/assets/be5a583a-144d-4b5c-960c-6aa345281f8e)



  The started_at and ended_at columns were in varchar data type, so it was necessary to change them to datetime2.  



![IMAGE 2](https://github.com/user-attachments/assets/e39c0218-5ecf-4b75-a7cd-cc605b581494)



![IMAGE 3](https://github.com/user-attachments/assets/cb95a264-5ec6-439c-af72-0c52bb8d914b)



I then extracted the weekday, month, hour, and year from the started_at column to create new columns showing each ride’s characteristics. The days of the week were numbered from 1 to 7, and months from 1 to 12, so I renamed them accordingly. I also created a column named “ride_length”, showing the trip duration in minutes.
The new table was named “data24251”.



![IMAGE 4](https://github.com/user-attachments/assets/0a1e88d9-e969-40de-a5c5-90f1a14b5659)



To finalize the cleaning process, I excluded rows where the trip duration was less than one minute and where the start or end station name was null. A total of 82,444 rows were excluded.

## Analyze
My entire analysis was executed by comparing the data between casual riders and members. The main analyzes were total rides, rides per month, rides per day of week, rides per hour of the day, average rides duration, bikes type used and stations location.


## Share

64% of all users belong to the member group, and 37% are casual riders.


![IMAGE 5](https://github.com/user-attachments/assets/2a7a8f4f-5bb9-43fd-8fa5-0ee60c4d5800)



When analyzing the number of rides per month, it is clear that the number of rides is higher during the spring and summer months (warmer months) compared to colder months. This behavior is common to both groups.

![IMAGE 6](https://github.com/user-attachments/assets/3e561e41-95a9-4f9f-a52a-dad6363dab35)


When analyzing the rides of both groups by day of the week, it is observed that members use the service more often during weekdays (possibly for commuting to work), while casual riders use it more frequently during weekends (likely for leisure).
This suggests that members use the bikes primarily for commuting, while casual riders use them for recreational purposes.



![IMAGE 7](https://github.com/user-attachments/assets/e9d5043c-5ea2-4a3a-b9a7-9e3d68445c73)




When analyzing rental times throughout the day, we can see that members have usage peaks during rush hours (8 a.m. and 5 p.m.), likely corresponding to work commutes, whereas casual riders use the bikes more evenly throughout the day and less frequently at night.


![IMAGE 8](https://github.com/user-attachments/assets/ff340882-95ec-4146-9ac3-20fec38bedd8)



In general, the ride duration is longer among casual riders than among members, indicating that casual users use the bikes to explore the city and visit leisure spots, while members use them for shorter, routine commutes.


  ![IMAGE 9](https://github.com/user-attachments/assets/1caee00a-49ee-4248-a43a-288798271a6e)



Among the types of bicycles used, members most frequently ride classic and electric bikes, whereas casual riders tend to prefer electric scooters.

   ![IMAGE 10](https://github.com/user-attachments/assets/795a7fcd-1fc7-4900-b054-69c82f36cacb)


 When analyzing the start and end station locations, it becomes clear that members use stations in commercial areas, closer to downtown, while casual riders tend to end their journeys near parks, museums, and other recreational sites.


   ![IMAGE 11](https://github.com/user-attachments/assets/afd400f0-610f-4270-b893-e5b5ff97e957)

   ## Act

After identifying the differences between casual and member riders , the final stage of our analysis involves applying our insights to drive solutions and recommendations that are supported by data. Recomandations:

- To encourage usage during off-peak periods, early registration campaigns featuring discounted membership rates could be introduced.
- Additionally, the introduction of group membership plans—targeted at families and friends—may foster increased adoption through collective engagement.
- Marketing initiatives may be strategically implemented during the spring and summer months at tourist and recreational destinations that typically attract casual riders.
- Given that casual riders are most active on weekends and throughout the spring and summer seasons, tailored offerings such as seasonal or weekend-only membership plans could prove      effective in capturing this segment.
- Furthermore, as casual riders generally undertake longer trips than regular members, introducing discounted rates for extended ride durations may serve as an incentive for both casual users and members to increase their ride time.





   



