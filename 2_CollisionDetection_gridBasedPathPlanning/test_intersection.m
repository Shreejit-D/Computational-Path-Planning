x1 = [2, 4, 3]; 
y1 = [2, 2, 4];
P1 = [x1; y1]';

x2 = [2.5, 3.5, 3]; 
y2 = [2.5, 2.5, 3.5];
P2 = [x2; y2]';

figure;
line([P1(:,1)' P1(1,1)], [P1(:,2)' P1(1,2)], 'Color', 'r');
hold on;
line([P2(:,1)' P2(1,1)], [P2(:,2)' P2(1,2)], 'Color', 'b');
axis equal;

flag = triangle_intersection(P1, P2);
if flag == 1
    disp("Intersection")
else
    disp("No Intersection")
end