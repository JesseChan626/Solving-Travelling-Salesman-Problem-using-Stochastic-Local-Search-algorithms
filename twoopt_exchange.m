function new_tour = twoopt_exchange(current_tour)
num_cities = length(current_tour);
m=ceil((num_cities-2)*rand(1)+2);
n=ceil((num_cities-2)*rand(1)+2);
while m>=n
    m=ceil((num_cities-2)*rand(1)+2);
    n=ceil((num_cities-2)*rand(1)+2);
end

    new_tour = current_tour(:,1:m-1);
    new_tour = [new_tour,fliplr(current_tour(:,m:n))];
    new_tour  = [new_tour,current_tour(:,n+1:end)]; 
    
end