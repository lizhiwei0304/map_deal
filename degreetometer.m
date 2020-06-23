 Latitude = VarName2;%��ȡά��
 Longitude = VarName1;%��ȡ����
 e = referenceEllipsoid('wgs84','m');
[FONS_X,FONS_Y,FONS_Z]=geodetic2ecef(e,Latitude,Longitude,0);
[xa1,ya1,FONS_up]=ecef2enu(FONS_X,FONS_Y,FONS_Z,Latitude(1),Longitude(1),0,e);
 plot(xa1,ya1,'Linewidth',2);