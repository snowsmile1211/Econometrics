module Econometrics
using Statistics, LinearAlgebra, Printf
using NLopt, SpecialFunctions
using StatsBase, StatsPlots, StatsFuns, StatsModels
using Distributions, Distances, DataFrames, KernelDensity
using Calculus, Optim, GR, DataFramesMeta, CSV
# Utilities
include("Utilities/stnorm.jl")
include("Utilities/ma.jl")
include("Utilities/trim.jl")
include("Utilities/prettyprint.jl")
include("Utilities/eye.jl")
include("Utilities/sortbyc.jl")
include("Utilities/dstats.jl")
include("Utilities/lag.jl")
include("Utilities/lags.jl")
include("Utilities/vech.jl")
include("Utilities/PrintDivider.jl")
include("Utilities/PrintEstimationResults.jl")
include("Utilities/clc.jl")
# linear regression
include("LinearRegression/lsfit.jl")
include("LinearRegression/ols.jl")
include("LinearRegression/tsls.jl")
include("LinearRegression/TestStatistics.jl")
# Bayesian
include("Bayesian/mcmc.jl")
# nonparametrics
include("NP/npreg.jl")
include("NP/InteriorPoint.jl")
include("NP/npdens.jl")
include("NP/bootstrap.jl")
include("NP/npdensity.jl")
include("NP/kernelweights.jl")
include("NP/NeweyWest.jl")
#=
#include("NN/TrainNet.jl")
#include("NN/AnalyzeNet.jl")
=#
# optimization
include("Optimization/samin.jl")
include("Optimization/fminunc.jl")
include("Optimization/fmincon.jl")

# MLE
include("ML/mle.jl")
include("ML/mleresults.jl")
include("ML/Likelihoods/logit.jl")
include("ML/Likelihoods/poisson.jl")
include("ML/Likelihoods/normal.jl")

# GMM
include("GMM/gmm.jl")
include("GMM/gmmresults.jl")

export stnorm, ma, trim, prettyprint, eye, sortbyc, dstats, lag, lags, vech
export clc, PrintDivider, PrintEstimationResults
export lsfit, ols, tsls, TestStatistics, NeweyWest
export mcmc
export npreg, npdens, kernelweights, bootstrap
export npdensity, InteriorPoint
#export TrainNet, AnalyzeNet
export samin, fminunc, fmincon
export mle, mleresults
export logit, poisson, normal
export gmm, gmmresults
end
