%%%%%%%%%%%%%%%%%%%%%%%%%%%% Critic Rating %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
prompt = 'Movie Recommender \nEnter type of Critic rating: 0.No Rating 1.Minimum 2.Maximum 3.Around \n';
rtype = input(prompt);

if rtype ~= 0
    prompt = 'Enter Rating: \n';
    rating = input(prompt);
    %disp(rating);

    %disp(rtype);
    ratingFilter = ones(10197,2);
    ratingFilter = ratingFilter * 10;
    ratingArray = zeros(10197,1);

    ratingArray = rtAllCriticsRating;
 
    for i = 1:10197
        ratingFilter(i,1) = abs(rating - ratingArray(i));
        ratingFilter(i,2) = i;
    end
    
    if rtype == 1    
          for i = 1:10197
             if ratingArray(i) >= rating
                ratingFilter(i,1) = 0;         
             end   
        end

    elseif rtype == 2    
          for i = 1:10197
              if ratingArray(i) <= rating
                ratingFilter(i,1) = 0;         
              end   
          end
    end    

end
%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%% Audience Rating %%%%%%%%%%%%%%%%

prompt = 'Enter type of Audience rating: 0.No Rating 1.Minimum 2.Maximum 3.Around \n';
rtype = input(prompt);

if rtype ~= 0
    prompt = 'Enter Rating: \n';
    rating = input(prompt);
    %disp(rating);

    %disp(rtype);
    ratingFilterA = ones(10197,2);
    ratingFilterA = ratingFilterA * 10;
    ratingArrayA = zeros(10197,1);

    ratingArrayA = 2 * rtAudienceRating;
   
    for i = 1:10197
           ratingFilterA(i,1) = abs(rating - ratingArrayA(i));
           ratingFilterA(i,2) = i;
    end
    
    if rtype == 1    
          for i = 1:10197
             if ratingArrayA(i) >= rating
                ratingFilterA(i,1) = 0;         
             end   
        end

    elseif rtype == 2    
          for i = 1:10197
              if ratingArrayA(i) <= rating
                ratingFilterA(i,1) = 0;         
              end   
          end
    end    

end
