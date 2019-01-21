clc , clear , close all

dietTrack = ...
    [123 140 160 145 ;  % Proteins
     250 260 280 366 ;  % Carbs
     70  65  68  72  ;  % Fats
     1850 1900 2150 1999;]; %Calories
 
 carbsV1 = dietTrack(2, 1:4)
 carbsV2 = dietTrack(2, 1:end)
 carbsV3 = dietTrack(2, 1:size(dietTrack, 2))
 carbsV4 = dietTrack(2, :)
 

 
 day3Values = dietTrack(:, 3)
 
 proteinsAndCarbsforDay2And3 = dietTrack(1:2,2:3)
 
 dietTrack(:, 2:3) = 100
 
 dietTrack(:, 2:3) * 1.1
 
 
 
 
 
 
 
 
 
 
 
 

 