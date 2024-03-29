function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));%2x1
%X - 12x2

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h = X*theta;%12x1

reg = (lambda/(2*m))*( sum((theta.^2)(2:end,:)) );
J =  (1/(2*m))*sum((h.-y).^2) + reg;

grad_reg = (lambda/m)*theta;
grad_reg(1,:) = 0;

grad = (1/m)*(sum((h.-y).*X))' + grad_reg;

%keyboard();









% =========================================================================

grad = grad(:);

end
