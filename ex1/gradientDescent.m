function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

len = length(theta);
temp = theta;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    
    
      for i = 1 : len,
        val = sum((X * theta - y) .* X(: , i)) * (alpha / m);
        %theta(i) = theta(i) - val;
        temp(i) = temp(i) - val;
      endfor
      
      theta = temp;
      %val1 = sum((X * theta - y) .* X(: , 1)) * (alpha / m);
      %theta(1 , 1) = theta(1 ,1) - val1;
      
      %val2 = sum((X * theta - y) .* X(: , 2)) * (alpha / m);
      %theta(2 , 1) = theta(2 ,1) - val2;
      
      %fprintf('%f\n', theta);





    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
