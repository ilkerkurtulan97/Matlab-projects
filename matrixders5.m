clc , clear , close all

dietTrack = ...
    [123 140 160 145 ;  % Proteins
     250 260 280 366 ;  % Carbs
     70  65  68  72  ;  % Fats
     1850 1900 2150 1999;]; %Calories
 

overTheCaloriesLimit = dietTrack(:, dietTrack(4, :) > 1900)
 
bellowTheCaloriesLimit = dietTrack([2 4], dietTrack(4, :) < 1900)


belowTheCaloriesLimitV2 = find(dietTrack(4, :)< 1900)

dietTrack(2:3,4)

extractedData2 = dietTrack([2 4], dietTrack(3,:) <= 70)

colsToExtract = dietTrack(2, :)

extractedData3 = dietTrack([1 3],colsToExtract)





