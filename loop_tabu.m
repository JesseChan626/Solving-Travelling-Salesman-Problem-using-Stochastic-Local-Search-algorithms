total_distance = tabu_simple(city_position,2000);
tabu_distance = [total_distance];
for a=1:29
    tabu_distance = [tabu_distance,tabu_simple(city_position,2000)];
end
plot(tabu_distance)
tabu_average=mean(tabu_distance)
tabu_std=std(tabu_distance)