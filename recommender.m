%%%%%% SPO %%%%%%%%%

%%Genre 
prompt = 'Movie Recommender \nEnter type of genre: 0.No preference 1.Adventure 2.Animation 3.Children 4.Comedy 5.Fantasy 6.Drama 7.Romance 8.Action 9.Crime 10.Thriller 11.Sci-Fi 12.Mystery 13.Horror 14.War 15.Documentary 16.Musical \nEnter values separated by space enclosed with single quote: \n';
genreInput = input(prompt);
genreChoice = str2num(genreInput);

if genreChoice(1) ~=0
    [nRows,nCols] = size(genreChoice);
    idPriority = ones(10197,1);
    idPriority = idPriority* 9999;
%    idPriority = idPriority';
    genreCell = {};
    
    for i = 1:nCols
        switch genreChoice(i)
            case 1
                advArray = [];
                s1 = 'Adventure';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        advArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = advArray';
                
            case 2
                animeArray = [];
                s1 = 'Animation';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        animeArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = animeArray';
                
            case 3
                childArray = [];
                s1 = 'Children';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        childArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = childArray';
                
            case 4
                comArray = [];
                s1 = 'Comedy';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        comArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = comArray';
                
            case 5
                fanArray = [];
                s1 = 'Fantasy';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        fanArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = fanArray';
                
            case 6
                dramArray = [];
                s1 = 'Drama';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        dramArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = dramArray';
                
            case 7
                romArray = [];
                s1 = 'Romance';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        romArray(end+1) = find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = romArray';
                
            case 8
                actArray = [];
                s1 = 'Action';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        actArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = actArray';
                
            case 9
                crmArray = [];
                s1 = 'Crime';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        crmArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = crmArray';
                
            case 10
                thrilArray = [];
                s1 = 'Thriller';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        thrilArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = thrilArray';
                
            case 11
                sciArray = [];
                s1 = 'Sci-Fi';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        sciArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = sciArray';
                
            case 12
                mystArray = [];
                s1 = 'Mystery';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        mystArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = mystArray';
                
            case 13
                horArray = [];
                s1 = 'Horror';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        horArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = horArray';
                
            case 14
                warArray = [];
                s1 = 'War';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        warArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = warArray';
                
            case 15
                docArray = [];
                s1 = 'Documentry';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        docArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = docArray';
                
            case 16
                musArray = [];
                s1 = 'Musical';
                for j = 1:20809
                    s2 = moviegenres {j,2};
                    if strcmp(s1,s2)
                        musArray(end+1) =  find(id == (moviegenres{j,1}));
                    end    
                end
                genreCell{i} = musArray';
                
            otherwise
                %% something here
                
        end
       %genreArray = reshape(genreChoice,nCols,1);
      
    end
    
    for i=1:nCols
       iteration = i;
        pSet = combntns(1:nCols,nCols-i+1);
       [pRows , pCols] = size(pSet);
       priority = i;
       for pi = 1:pRows
           iResult = (1:10197)';
           for pj = 1:pCols
               iResult = intersect(iResult,genreCell{pSet(pi,pj)});
           end
           [resultRows,resultCols] = size(iResult);
           for ri = 1:resultRows
               for rj = 1:resultCols
                    idPriority(iResult(ri,rj)) = min(priority,idPriority(iResult(ri,rj)));
               end               
           end 
       end
    end
    for i = 1 : 10197
        genreIndex(i,1) = idPriority(i);
        genreIndex(i,2) = i;
        genreIndex(i,3) = id(i);
    end    
    resultGenre = sortrows(genreIndex);
    
    genreResultRank = ones(10197,2);
    
    for i = 1:10197
        genreResultRank(resultGenre(i,2),1) = i; 
        genreResultRank(resultGenre(i,2),2) = resultGenre(i,2);
    end
     
    resultGenreID  = [];
    i = 1;
    
    while resultGenre(i,1) <= nCols
        resultGenreID(end+1) = resultGenre(i,2);
        i = i+1;
    end
%     disp('Recommended Movies: ');
%     i = 1;
%     while resultGenre(i,1) <= min(2,nCols) 
%         disp(title(resultGenre(i,2)));
%         i = i+1;
%     end    
end


%% actor
%%%%%%% Actor %%%%%%%%%%%
prompt = 'Enter the actors name: \nEnter values separated by space enclosed with single quote or enter N if no input: \n';
actorInput = input(prompt);
if actorInput ~= 'N'
actorChoice = strsplit (actorInput,',');

%if actorChoice(1) ~=0
    [nRows,nCols] = size(actorChoice);
    idRank = ones(10197,1);
    idRank = idRank * 9999;
%    idPriority = idPriority';
    actorCell = {};    
    actMovieIdcell = {};
    
    
    for i = 1:nCols
       tempArray = {};
       actMovieArray = [];
        for j = 1:231742
            if strcmp(movieactors{j,2} , actorChoice(i))
                tempArray{end+1,1} =  find(id == (movieactors{j,1}));
                actMovieArray(end+1) = find(id == (movieactors{j,1}));
                tempArray{end,2} = movieactors{j,3};
            end
       end
       actorCell{i} = tempArray;
       actMovieIdcell{i} = actMovieArray;
    end
    
    for i=1:nCols
       iteration = i;
           aSet = combntns(1:nCols,nCols-i+1);
           [aRows , aCols] = size(aSet);
           aPriority = i;
           for ai = 1:aRows
              
               aResult = (1:10197);
               
               for aj = 1:aCols
                   aResult = intersect(aResult,actMovieIdcell{aSet(ai,aj)});
               end
               
               [resultRows,resultCols] = size(aResult);
               
               for ri = 1:resultRows
                   for rj = 1:resultCols
                        idRank(aResult(ri,rj)) = min(aPriority,idRank(aResult(ri,rj)));
                   end               
               end 
               
           end
                  
    end
    %% modification %%
%     for x = 1:nCols
%        for y = 1:231742
%             if strcmp(movieactors{y,2} , actorChoice(x))
%                  idRank(movieID(movieactors{y,1}))= idRank(movieID(movieactors{y,1}))+movieactors{j,3};                   
%             end
%             
%        end
%     end

    for i = 1:nCols
        [tRows, tCols] =  size(actorCell{1,i});
        for ti = 1:tRows
            if idRank(actorCell{1,i}{ti,1}) == nCols
                idRank(actorCell{1,i}{ti,1}) = 9999;
                idRank(actorCell{1,i}{ti,1}) = nCols + actorCell{1,i}{ti,2};
            end
        end
    end
        
    %%
    for i = 1 : 10197
        actorIndex(i,1) = idRank(i);
        actorIndex(i,2) = i;
        actorIndex(i,3) = id(i);
    end
    
    resultActor = sortrows(actorIndex);
    
 
    %%
    actorResultRank = ones(10197,2);
    for i = 1:10197
        actorResultRank(resultActor(i,2),1) = i; 
        actorResultRank(resultActor(i,2),2) = resultActor(i,2);
    end
    %%
    
    resultActorID  = [];
    i = 1;
    
    while resultActor(i,1) < 9999
        resultActorID(end+1) = resultActor(i,2);
        i = i+1;
    end
    
    %%
    
%        i = 1;
%        disp('Recommended Movies: ');
%     while resultActor(i,1) < min(9999) || i < 100 
%         disp(title(resultActor(i,2)));
%         i = i+1;
%     end    
end
% 

%% Rating 

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Critic Rating %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
prompt = 'Enter type of Critic rating: 0.No Rating 1.Minimum 2.Maximum 3.Around \n';
rtype = input(prompt);
assert(ge(rtype,0) && le(rtype,3),'Please provide an integer value from 0 to 3');
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
assert((rtype >=0) && rtype<=3 ,'Please provide an integer value from 0 to 3');
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

%%flagC

%%flagA
%%%%%%%%%%%%%%%%%% User and/or Audience %%%%%%%%%%%%%%

if flagC == 1 && flagA == 1
    prompt = 'Enter choice: 1.Critic AND Audience 2.Critic OR Audience\n';
    rop = input(prompt);
    
    if rop == 1
        ratingOut = (ratingFilterC + ratingFilterA) /2;
    elseif rop == 2
        ratingOut = min(ratingFilterC,ratingFilterA);
        % discuss tmrw about giving more priority to intersection than
        % other things in union which lead to 0
    end
    
    for i = 1 : 10197
        ratingIndex(i,1) = ratingOut(i);
        ratingIndex(i,2) = i;
    end
end
    %%
    if flagC == 1
       for i = 1 : 10197
         ratingIndex(i,1) = ratingIndex(i,1)+ (100 - rtAllCriticsScore(i));
         ratingIndex(i,2) = i;
       end 
    end
    
    if flagA == 1
        for i = 1 : 10197
         ratingIndex(i,1) = ratingIndex(i,1)+ (100 - rtAudienceScore(i));
         ratingIndex(i,2) = i;
        end
    end
    
    if flagA == 0 && flagC == 0
        ratingIndex(i,1) = 10 - ((0.7 *rtAllCriticsRating(i)) + (0.3 * 2 *rtAudienceRating(i))) + (100 - ((0.7*rtAudienceScore(i)) + (0.3*rtAllCriticsScore(i))));
        ratingIndex(i,2) = i;
    end
    
    %%
    result = sortrows(ratingIndex);
    
    ratingResultRank = ones(10197,2);
   
    for i = 1:10197
        ratingResultRank(result(i,2),1) = i; 
        ratingResultRank(result(i,2),2) = result(i,2);
    end
    
    
    resultRatingID  = [];
    i = 1;
    
    while result(i,1) < 70 
        resultRatingID(end+1) = result(i,2);
        i = i+1;
    end
    
    %% %%%%%%%%  MERGING %%%%%%%%%%%%
    idPriorityFinal = ones(10197,1);
    idPriorityFinal = idPriorityFinal* 9999;
    
    tempresult = intersect(resultGenreID,resultActorID);
    tempresult1 = intersect(tempresult,resultRatingID);
    [tRows,tCols] = size(tempresult1);
    
    for i= 1:tRows
        for j = 1:tCols
            idPriorityFinal(tempresult1(i,j)) = 1;
        end
    end
    
    [tRows,tCols] = size(tempresult);
    for i= 1:tRows
        for j = 1:tCols
            idPriorityFinal(tempresult(i,j)) = min(2,idPriorityFinal(tempresult(i,j)));
        end
    end
    
    [tRows,tCols] = size(resultGenreID);
    for i= 1:tRows
        for j = 1:tCols
            idPriorityFinal(resultGenreID(i,j)) = min(3,idPriorityFinal(resultGenreID(i,j)));
        end
    end
    
    [tRows,tCols] = size(resultActorID);
    for i= 1:tRows
        for j = 1:tCols
            idPriorityFinal(resultActorID(i,j)) = min(3,idPriorityFinal(resultActorID(i,j)));
        end
    end

   [tRows,tCols] = size(resultRatingID);
    for i= 1:tRows
        for j = 1:tCols
            idPriorityFinal(resultRatingID(i,j)) = min(4,idPriorityFinal(resultRatingID(i,j)));
        end
    end

   for i = 1 : 10197
        finalIndex(i,1) = idPriorityFinal(i);
        finalIndex(i,2) = i;
        finalIndex(i,3) = id(i);
   end 
   
   overallResult = sortrows(finalIndex);
    %%
    %% consider top 100 from all and do intersection(same logic as that of actors)
    disp('The recommended Movies are: ');
    i = 2;
    OBR = [];
    similarityOBR = [];
    while(overallResult(i-1,1) == overallResult(i,1))
        disp(title(overallResult(i-1,2)));
        OBR(end+1) = overallResult(i-1,2);
        similarityOBR(end+1) = 1;
        i = i+1;
    end
    
    disp(title(overallResult(i-1,2)));
    OBR(end+1) = overallResult(i-1,2);
    similarityOBR(end+1) = 1;
        
    similarityOBR = similarityOBR';
    tempresult1 = tempresult1';
        
%%%%%%%%%%%%
