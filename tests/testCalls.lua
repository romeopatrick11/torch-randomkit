
require 'randomkit'
local myTests = {}
local tester = torch.Tester()
function myTests.test_beta()
   tester:assert(randomkit.beta(0.5, 0.5))
   tester:assert(randomkit.beta(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.beta(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.beta(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.beta(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_binomial()
   tester:assert(randomkit.binomial(0.5, 0.5))
   tester:assert(randomkit.binomial(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.binomial(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.binomial(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.binomial(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_bytes()
   tester:assert(randomkit.bytes(0.5))
   tester:assert(randomkit.bytes(torch.Tensor(10), 0.5))
   tester:assert(randomkit.bytes(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.bytes(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.bytes(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_chisquare()
   tester:assert(randomkit.chisquare(0.5))
   tester:assert(randomkit.chisquare(torch.Tensor(10), 0.5))
   tester:assert(randomkit.chisquare(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.chisquare(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.chisquare(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_exponential()
   tester:assert(randomkit.exponential(0.5))
   tester:assert(randomkit.exponential(torch.Tensor(10), 0.5))
   tester:assert(randomkit.exponential(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.exponential(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.exponential(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_f()
   tester:assert(randomkit.f(0.5, 0.5))
   tester:assert(randomkit.f(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.f(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.f(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.f(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_gamma()
   tester:assert(randomkit.gamma(0.5, 0.5))
   tester:assert(randomkit.gamma(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.gamma(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.gamma(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.gamma(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_geometric()
   tester:assert(randomkit.geometric(0.5))
   tester:assert(randomkit.geometric(torch.Tensor(10), 0.5))
   tester:assert(randomkit.geometric(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.geometric(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.geometric(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_gumbel()
   tester:assert(randomkit.gumbel(0.5, 0.5))
   tester:assert(randomkit.gumbel(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.gumbel(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.gumbel(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.gumbel(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_hypergeometric()
   tester:assert(randomkit.hypergeometric(0.5, 0.5, 0.5))
   tester:assert(randomkit.hypergeometric(torch.Tensor(10), 0.5, 0.5, 0.5))
   tester:assert(randomkit.hypergeometric(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.hypergeometric(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.hypergeometric(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_laplace()
   tester:assert(randomkit.laplace(0.5, 0.5))
   tester:assert(randomkit.laplace(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.laplace(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.laplace(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.laplace(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_logistic()
   tester:assert(randomkit.logistic(0.5, 0.5))
   tester:assert(randomkit.logistic(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.logistic(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.logistic(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.logistic(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_lognormal()
   tester:assert(randomkit.lognormal(0.5, 0.5))
   tester:assert(randomkit.lognormal(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.lognormal(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.lognormal(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.lognormal(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_logseries()
   tester:assert(randomkit.logseries(0.5))
   tester:assert(randomkit.logseries(torch.Tensor(10), 0.5))
   tester:assert(randomkit.logseries(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.logseries(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.logseries(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_negative_binomial()
   tester:assert(randomkit.negative_binomial(0.5, 0.5))
   tester:assert(randomkit.negative_binomial(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.negative_binomial(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.negative_binomial(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.negative_binomial(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_noncentral_chisquare()
   tester:assert(randomkit.noncentral_chisquare(0.5, 0.5))
   tester:assert(randomkit.noncentral_chisquare(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.noncentral_chisquare(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.noncentral_chisquare(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.noncentral_chisquare(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_noncentral_f()
   tester:assert(randomkit.noncentral_f(0.5, 0.5, 0.5))
   tester:assert(randomkit.noncentral_f(torch.Tensor(10), 0.5, 0.5, 0.5))
   tester:assert(randomkit.noncentral_f(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.noncentral_f(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.noncentral_f(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_normal()
   tester:assert(randomkit.normal(0.5, 0.5))
   tester:assert(randomkit.normal(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.normal(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.normal(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.normal(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_pareto()
   tester:assert(randomkit.pareto(0.5))
   tester:assert(randomkit.pareto(torch.Tensor(10), 0.5))
   tester:assert(randomkit.pareto(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.pareto(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.pareto(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_poisson()
   tester:assert(randomkit.poisson(0.5))
   tester:assert(randomkit.poisson(torch.Tensor(10), 0.5))
   tester:assert(randomkit.poisson(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.poisson(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.poisson(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_power()
   tester:assert(randomkit.power(0.5))
   tester:assert(randomkit.power(torch.Tensor(10), 0.5))
   tester:assert(randomkit.power(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.power(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.power(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_randint()
   tester:assert(randomkit.randint(0.5, 0.5))
   tester:assert(randomkit.randint(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.randint(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.randint(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.randint(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_random()
   tester:assert(randomkit.random_sample())
   tester:assert(randomkit.random_sample(torch.Tensor(10)))
   tester:assert(randomkit.random_sample())
   tester:assert(randomkit.random_sample(torch.Tensor(10)))
   tester:assertError(function() randomkit.random_sample(torch.Tensor(10), torch.Tensor(10)) end)
end
function myTests.test_random_sample()
   tester:assert(randomkit.random_sample())
   tester:assert(randomkit.random_sample(torch.Tensor(10)))
   tester:assert(randomkit.random_sample())
   tester:assert(randomkit.random_sample(torch.Tensor(10)))
   tester:assertError(function() randomkit.random_sample(torch.Tensor(10), torch.Tensor(10)) end)
end
function myTests.test_rayleigh()
   tester:assert(randomkit.rayleigh(0.5))
   tester:assert(randomkit.rayleigh(torch.Tensor(10), 0.5))
   tester:assert(randomkit.rayleigh(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.rayleigh(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.rayleigh(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_standard_cauchy()
   tester:assert(randomkit.standard_cauchy())
   tester:assert(randomkit.standard_cauchy(torch.Tensor(10)))
   tester:assert(randomkit.standard_cauchy())
   tester:assert(randomkit.standard_cauchy(torch.Tensor(10)))
   tester:assertError(function() randomkit.standard_cauchy(torch.Tensor(10), torch.Tensor(10)) end)
end
function myTests.test_standard_exponential()
   tester:assert(randomkit.standard_exponential())
   tester:assert(randomkit.standard_exponential(torch.Tensor(10)))
   tester:assert(randomkit.standard_exponential())
   tester:assert(randomkit.standard_exponential(torch.Tensor(10)))
   tester:assertError(function() randomkit.standard_exponential(torch.Tensor(10), torch.Tensor(10)) end)
end
function myTests.test_standard_gamma()
   tester:assert(randomkit.standard_gamma(0.5))
   tester:assert(randomkit.standard_gamma(torch.Tensor(10), 0.5))
   tester:assert(randomkit.standard_gamma(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.standard_gamma(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.standard_gamma(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_standard_normal()
   tester:assert(randomkit.standard_normal())
   tester:assert(randomkit.standard_normal(torch.Tensor(10)))
   tester:assert(randomkit.standard_normal())
   tester:assert(randomkit.standard_normal(torch.Tensor(10)))
   tester:assertError(function() randomkit.standard_normal(torch.Tensor(10), torch.Tensor(10)) end)
end
function myTests.test_standard_t()
   tester:assert(randomkit.standard_t(0.5))
   tester:assert(randomkit.standard_t(torch.Tensor(10), 0.5))
   tester:assert(randomkit.standard_t(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.standard_t(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.standard_t(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_triangular()
   tester:assert(randomkit.triangular(0.5, 0.5, 0.5))
   tester:assert(randomkit.triangular(torch.Tensor(10), 0.5, 0.5, 0.5))
   tester:assert(randomkit.triangular(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.triangular(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.triangular(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_uniform()
   tester:assert(randomkit.uniform(0.5, 0.5))
   tester:assert(randomkit.uniform(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.uniform(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.uniform(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.uniform(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_vonmises()
   tester:assert(randomkit.vonmises(0.5, 0.5))
   tester:assert(randomkit.vonmises(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.vonmises(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.vonmises(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.vonmises(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_wald()
   tester:assert(randomkit.wald(0.5, 0.5))
   tester:assert(randomkit.wald(torch.Tensor(10), 0.5, 0.5))
   tester:assert(randomkit.wald(torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.wald(torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.wald(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_weibull()
   tester:assert(randomkit.weibull(0.5))
   tester:assert(randomkit.weibull(torch.Tensor(10), 0.5))
   tester:assert(randomkit.weibull(torch.Tensor(10):fill(0.5)))
   tester:assert(randomkit.weibull(torch.Tensor(10), torch.Tensor(10):fill(0.5)))
   tester:assertError(function() randomkit.weibull(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(0.5)) end)
end
function myTests.test_zipf()
   tester:assert(randomkit.zipf(1.5))
   tester:assert(randomkit.zipf(torch.Tensor(10), 1.5))
   tester:assert(randomkit.zipf(torch.Tensor(10):fill(1.5)))
   tester:assert(randomkit.zipf(torch.Tensor(10), torch.Tensor(10):fill(1.5)))
   tester:assertError(function() randomkit.zipf(torch.Tensor(10), torch.Tensor(10), torch.Tensor(10):fill(1.5)) end)
end

tester:add(myTests)
tester:run()
