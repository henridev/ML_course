function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));


% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%     
  
% mu = mean(X); 
% sigma = std(X);

% for i = 1:length(mu)
%  display(i);
%  current_mean = mu(i);
%  current_std = sigma(i);
%  current_column = X(:,i);
%  X_norm(:,i) =  current_column - current_mean / current_std;
%end

numColumns = size(X, 2);

mu = mean(X);
sigma = std(X);
for i = 1:numColumns
    X_norm(:,i) = (X(:, i) - mu(i)) / sigma(i);
end;

% display(X_norm)
 
% ============================================================


end
