%% monte carlo method to calculate mean.
%% parameters
clear;clc;
n_samples = [10, 100, 1000, 3000, 10000, 30000];
sample_type_number = length(n_samples);


%% uniform distribution, mean
% unifrnd(a, b, [1 n_samples(i)])
a = 2;
b = 6;
means = zeros(1, sample_type_number);
for i = 1:length(n_samples)
    samples = unifrnd(a, b, [1 n_samples(i)]);
    means(1,i) = mean(samples);
end

%% Gaussian distribution, mean
% normrnd
mu = 2;
sigma = 1.5;
means_gaussian = zeros(1, sample_type_number);
for i = 1:length(n_samples)
    samples = normrnd(mu, sigma, [1 n_samples(i)]);
    means_gaussian(1,i) = mean(samples);
end

%% Exponential distribution, mean
% exprnd
lambda = 0.5;
mu = 1 / lambda;
means_exponential = zeros(1, sample_type_number);
for i = 1:length(n_samples)
    samples = exprnd(mu, [1 n_samples(i)]);
    means_exponential(1,i) = mean(samples);
end

%% Poisson distribution, mean
% exprnd
lambda = 0.5;
mu = 1 / lambda;
means_poisson = zeros(1, sample_type_number);
for i = 1:length(n_samples)
    samples = poissrnd(lambda, [1 n_samples(i)]);
    means_poisson(1,i) = mean(samples);
end


%% Calculate integrate with monte carlo.
syms x
f(xlabel)






