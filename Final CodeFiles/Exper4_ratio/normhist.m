function hst = normhist(D,AcqPt)

if AcqPt<1200 % if there really was an acquisition point
    
    hst = hist(D(AcqPt:end)); % Matlab's hist command default is 10 bins.
    % Thus, this command divides the range of within-CS times into 10 equal
    % intervals and tallies the #s of pokes falling within each bin. It
    % does this only for the post-acquisition CS-ITI rate differences
    
    hst = hst/sum(hst); % normalizing (converting counts to a set of
    % probabilities that sum to 1, i.e., a discrete probability distribution)
    
else % there was no acquisition point
    
    hst = hist(D); % same as above but for all the data (to show how pre-
    % acquisition pokes are distributed within the CS
    
    hst = hst/sum(hst); % normalizing (converting counts to a set of
    % probabilities that sum to 1, i.e., a discrete probability distribution)
end