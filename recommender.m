%%%%%%%%%%%%%%%%%%%%%%%%%%%% Critic Rating %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
prompt = 'Movie Recommender \nEnter type of Critic rating: 0.No Rating 1.Minimum 2.Maximum 3.Around \n';
rtype = input(prompt);
flagC = 0;
flagA = 0;
if rtype ~= 0
    prompt = 'Enter Rating: \n';
    rating = input(prompt);
    %disp(rating);
    flagC = 1;
    %disp(rtype);
    ratingFilterC = ones(10197,2);
    ratingFilterC = ratingFilterC * 10;
    ratingArrayC = zeros(10197,1);

    ratingArrayC = rtAllCriticsRating;
 
    for i = 1:10197
        ratingFilterC(i,1) = abs(rating - ratingArrayC(i));
        ratingFilterC(i,2) = i;
    end
    
    if rtype == 1    
          for i = 1:10197
             if ratingArrayC(i) >= rating
                ratingFilterC(i,1) = 0;         
             end   
        end

    elseif rtype == 2    
          for i = 1:10197
              if ratingArrayC(i) <= rating
                ratingFilterC(i,1) = 0;         
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
    flagA = 1;
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
%%%%%%%%%%%

%flagC
%flagA
%%%%%%%%%%%%%%%%%% User and/or Audience %%%%%%%%%%%%%%

if flagC == 1 && flagA == 1
    prompt = 'Enter choice: 1.Critic AND Audience 2.Critic OR Audience\n';
    rop = input(prompt);
    
    if rop == 1
        ratingOut = ratingFilterC + ratingFilterA /2;
    elseif rop == 2
        ratingOut = min(ratingFilterC,ratingFilterA);
    end
    
    for i = 1 : 10197
        ratingIndex(i,1) = ratingOut(i);
        ratingIndex(i,2) = i;
    end    
    result = sortrows(ratingIndex);
    disp('The recommended Movies are: \n');
    i = 2;
    while( i <= 10197 && (result(i-1,1) == result(i,1)))
        disp(title(result(i-1,2)));
        i = i+1;
    end
end
%%%%%%%%%%%%
