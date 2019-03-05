total_distance = sa(90,city_position,2000);
sa_distance = [total_distance];
for a=1:29
    sa_distance = [sa_distance,sa(90,city_position,2000)];
end
plot(sa_distance)
sa_average=mean(sa_distance)
sa_std=std(sa_distance)