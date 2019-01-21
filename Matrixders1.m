clc , clear , close all

dietTrackW1 = ...
[123 140 160 145; % Proteins
250 260 280 366; % Carbs
70 65 72 67; % Fats
1050 1900 2150 1999]; %Calories


dietTrackW2 = ...
[123 120 160 165; % Proteins
230 250 210 361; % Carbs
70 65 72 42; % Fats
1200 1970 2150 1920]; %Calorie

totalForTwoWeeks = dietTrackW1 + dietTrackW2

increaseByTenPerc = dietTrackW2 * 1.1 

decreaseByTenPerc = dietTrackW2 - (dietTrackW2 * 0.1) 

totalWeeks = dietTrackW1 + dietTrackW2;

averageForEachDay = totalForTwoWeeks / 2 

A=[1 1 1;1 1 1;1 1 1];
B=[2 2 2;2 2 2;2 2 2;2 2 2];








