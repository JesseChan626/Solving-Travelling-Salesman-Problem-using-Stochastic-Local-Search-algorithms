function dij = geo_distance(city1,city2)
PI = 3.141592;
RRR = 6378.388;
%city1 latitude and longitude
c11_deg = fix( city1(1) );
c11_min = city1(1) - c11_deg;
latitude1 = PI * (c11_deg + 5.0 * c11_min / 3.0 ) / 180.0; 
c12_deg = fix( city1(2) );
c12_min = city1(2) - c12_deg;
longitude1 = PI * (c12_deg + 5.0 * c12_min / 3.0 ) / 180.0;
%city2 latitude and longitude
c21_deg = fix( city2(1) );
c21_min = city2(1) - c21_deg;
latitude2 = PI * (c21_deg + 5.0 * c21_min / 3.0 ) / 180.0; 
c22_deg = fix( city2(2) );
c22_min = city2(2) - c22_deg;
longitude2 = PI * (c22_deg + 5.0 * c22_min / 3.0 ) / 180.0;

%distance between two cities
q1 = cos( longitude1 - longitude2 );
q2 = cos( latitude1 - latitude2 );
q3 = cos( latitude1 + latitude2 );
dij = fix(RRR * acos( 0.5*((1.0+q1)*q2 - (1.0-q1)*q3) ) + 1.0);

