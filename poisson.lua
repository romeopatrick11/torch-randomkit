require 'cephes'

function randomkit.poissonPDF(x, lambda)
    return cephes.pow(lambda, x) / cephes.fac(x) * cephes.exp(-lambda)
end

function randomkit.poissonLogPDF(x, lambda)
    error("Not implemented")
end

function randomkit.poissonCDF(x, lambda)
    if x >= 0 then
        return cephes.igamc(math.floor(x + 1), lambda)
    else
        return 0
    end
end

function randomkit.poissonQuantile(p, lambda)
    error("Not implemented")
end
