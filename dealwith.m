% clear
% clc

%     data=xlsread('整合后数据.xlsx','滑行试验1.8');
%      data=xlsread('整合后数据.xlsx','滑行试验6.5');
%      data=xlsread('整合后数据.xlsx','滑行试验15.7');
%    data=xlsread('整合后数据.xlsx','滑行试验22');
%   data=xlsread('整合后数据.xlsx','直驶加大半径1');
%    data=xlsread('整合后数据.xlsx','直驶加大半径2');
%     data=xlsread('整合后数据.xlsx','直驶加大半径3');
%      data=xlsread('整合后数据.xlsx','直驶加大半径4');
%      data=xlsread('整合后数据.xlsx','直驶加大半径5');
%      data=xlsread('整合后数据.xlsx','直驶加大半径6');
%    data=xlsread('整合后数据.xlsx','单侧制动右1');
%    data=xlsread('整合后数据.xlsx','单侧制动右2');
%   data=xlsread('整合后数据.xlsx','单侧制动左');

 % Latitude = data(:,5);%读取维度
 % Longitude = data(:,6);%读取经度
 
Latitude = y;
Longitude = x; 

e = referenceEllipsoid('wgs84','m');
[FONS_X,FONS_Y,FONS_Z]=geodetic2ecef(e,Latitude,Longitude,0);
[xa1,ya1,FONS_up]=ecef2enu(FONS_X,FONS_Y,FONS_Z,Latitude(1),Longitude(1),0,e);


 plot(xa1,ya1);