function total_distance = tabu_simple(inputcities,max_iter)
global iterations;
% Initialize the iteration number.
iterations = 1;
num_cities = length(inputcities);
%current_tour = randperm(num_cities);
current_tour= [1:num_cities];
%best_tour = current_tour;
tabu_list = [];
cities_coordinates = inputcities(:,current_tour);
current_distance = distance(cities_coordinates);
best_distance = current_distance;
results = zeros(max_iter,1);
results(1) = best_distance;
%plot(results);

while(iterations < max_iter)
    new_tour = twoopt_exchange(current_tour);
    new_cities_coordinates = inputcities(:,new_tour);
    new_distance = distance(new_cities_coordinates);
            
            if isequal(new_tour,tabu_list) ~= 1
                if new_distance < current_distance
                    current_distance = new_distance;
                    current_tour = new_tour;
                    tabu_list = current_tour;
                    
                end
            end
    best_distance = current_distance;
    %results(iterations) = best_distance;
    %plot(results(1:iterations),'r');xlabel('iteration'); ylabel('f(x)');
    %text(0.5,0.95,['Best = ', num2str(best_distance)],'Units','normalized');
    %drawnow;
    
    iterations = iterations + 1;
    total_distance = best_distance;
    
end