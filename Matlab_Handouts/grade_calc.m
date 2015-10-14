function [ letter_grade ] = grade_calc( number_grade )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if (number_grade >= 93)
    letter_grade = 'A';
elseif (number_grade >= 85)
    letter_grade = 'B';
elseif (number_grade >= 77)
    letter_grade = 'C';
elseif (number_grade >= 70)
    letter_grade = 'D';
else
    letter_grade = 'F';
end

end
