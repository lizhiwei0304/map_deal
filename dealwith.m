% clear
% clc

%     data=xlsread('���Ϻ�����.xlsx','��������1.8');
%      data=xlsread('���Ϻ�����.xlsx','��������6.5');
%      data=xlsread('���Ϻ�����.xlsx','��������15.7');
%    data=xlsread('���Ϻ�����.xlsx','��������22');
%   data=xlsread('���Ϻ�����.xlsx','ֱʻ�Ӵ�뾶1');
%    data=xlsread('���Ϻ�����.xlsx','ֱʻ�Ӵ�뾶2');
%     data=xlsread('���Ϻ�����.xlsx','ֱʻ�Ӵ�뾶3');
%      data=xlsread('���Ϻ�����.xlsx','ֱʻ�Ӵ�뾶4');
%      data=xlsread('���Ϻ�����.xlsx','ֱʻ�Ӵ�뾶5');
%      data=xlsread('���Ϻ�����.xlsx','ֱʻ�Ӵ�뾶6');
%    data=xlsread('���Ϻ�����.xlsx','�����ƶ���1');
%    data=xlsread('���Ϻ�����.xlsx','�����ƶ���2');
%   data=xlsread('���Ϻ�����.xlsx','�����ƶ���');

 % Latitude = data(:,5);%��ȡά��
 % Longitude = data(:,6);%��ȡ����
 
Latitude = y;
Longitude = x; 

e = referenceEllipsoid('wgs84','m');
[FONS_X,FONS_Y,FONS_Z]=geodetic2ecef(e,Latitude,Longitude,0);
[xa1,ya1,FONS_up]=ecef2enu(FONS_X,FONS_Y,FONS_Z,Latitude(1),Longitude(1),0,e);


 plot(xa1,ya1);