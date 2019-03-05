function total_distance = sa(T0,inputcities,kmax)
%simulated annealing
global k;
% Initialize the iteration number.
k = 1;
num_cities = length(inputcities);
current_tour= [1:num_cities];
best_tour = current_tour;
cities_coordinates = inputcities(:,current_tour);
current_distance = distance(cities_coordinates);
best_distance = current_distance;

results = zeros(kmax,1);
results(1) = best_distance;
%plot(results);

while (k<kmax)
    
    new_tour = twoopt_exchange(current_tour);
    new_cities_coordinates = inputcities(:,new_tour);
    new_distance = distance(new_cities_coordinates);
    delta = current_distance - new_distance;
    if new_distance < current_distance
        current_distance = new_distance;
        current_tour = new_tour;
    else
        if exp((delta)/Temperature(T0,k,kmax)) > rand()
            current_distance = new_distance;
            current_tour = new_tour;
        end
    end
    if new_distance < best_distance
        best_distance = new_distance;
        best_tour = new_tour;
    end
     %results(k) = current_distance;
     %plot(results(1:k),'r');xlabel('iteration'); ylabel('f(x)');
     %text(0.5,0.95,['Best = ', num2str(best_distance)],'Units','normalized');
     %drawnow;
    
    k = k + 1;    
    total_distance = best_distance;
end
