% ME4823 Justin Komma
% Create a bag file object with the file name
% by omitting the semicolon this displays some information about
% the bag file
bag = rosbag('../data/myturtle.bag')
 
% Display a list of the topics and message types in the bag file
bag.AvailableTopics
 
% Since the messages on topic turtle1/pose are of type Twist,
% let's see some of the attributes of the Twist message
msg_pose = rosmessage('turtlesim/Pose')
showdetails(msg_pose)
 
% Get just the topic we are interested in
bagselect = select(bag,'Topic','turtle1/pose');
 
% Create a time series object based on the fields of the turtlesim/Pose
% message we are interested in
ts = timeseries(bagselect,'X','Y','Theta','LinearVelocity','AngularVelocity');

% x is the x position of the turtle
% y is the y position of the turtle
% vel is the LinearVelocity of the turtle
% th is the heading angle of the turtle in radians
 
% u = vel.*cos(th);
% v = vel.*sin(th);
% ii = 1:10:length(x);  % Decimate the data so that it plot only every Nth point.
% quiver(x(ii),y(ii),u(ii),v(ii))


%% Plots

figure(1)
plot(ts.data(:,1), ts.data(:,2))
title('Turtle Position over Time','fontsize',20)
xlabel('X location from origin','fontsize',20)
ylabel('Y location from origin','fontsize',20)
saveas(gcf,'pose_xy.png') 

figure(2)
plot(ts.time-ts.time(1), ts.data(:,3))
title('Turtle Heading vs Time','fontsize',20)
xlabel('Time [s]','fontsize',20)
ylabel('Heading / Theta [rad]','fontsize',20)
saveas(gcf,'pose_theta.png') 

figure(3)
x = ts.data(:,1);
y = ts.data(:,2);
u = ts.data(:,4).*cos(ts.data(:,3));
v = ts.data(:,4).*sin(ts.data(:,3));
ii = 1:10:length(ts.data(:,1));
quiver(x(ii),y(ii),u(ii),v(ii))
title('Turtle Pointing Direction','fontsize',20)
xlabel('X location from origin','fontsize',20)
ylabel('Y location from origin','fontsize',20)
saveas(gcf,'pose_quiver.png') 
