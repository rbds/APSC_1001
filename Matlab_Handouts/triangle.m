function [ angles ] = triangle( sides )
%triangle Takes as inputs the side lengths of a triangle and returns the
%internal angles
%   Using the law of cosines, find the 3 internal angles in radians for a
%   given triangle
%     Input Arugments:
%         sides: vector of three side lengths
%         
%     Output Arguments:
%         angles: vector of three angles
%          note: angles will be sorted smalles to largest.
             
s = sort(sides);
a = s(1);
b = s(2);
c = s(3);

if (c> a+b) %check to make sure the input satisfies the triangle inequality
   disp('This is not a triangle!');
   return % if not, exit the function.
end

A = acos((a^2 - b^2 - c^2)/(2*b*c)); %law of cosines used to calculate
B = acos((b^2 - a^2 - c^2)/(2*a*c));
C = acos((c^2 - a^2 - b^2)/(2*a*b));

angles = [A B C]; %vector to return
end

