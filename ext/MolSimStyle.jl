import Plots
using MolSimToolkit: MolSimStyle

const MolSimStyle_parameters = Dict{Symbol,Any}(
    :linewidth => 2,
    :framestyle => :box,
    :label => :none,
    :fontfamily => "Computer Modern",
    :margin => 0.5Plots.Measures.cm,
    :grid => false,
    :xlabel => "x",
    :ylabel => "y",
)

#
# overwrite default parameters or add parameters if other kargs where passed
#
function _kargs(parameters = MolSimStyle_parameters; kargs)
    custom_parameters = copy(parameters)
    for karg in keys(kargs)
        custom_parameters[karg] = kargs[karg]
    end
    return custom_parameters
end

Plots.plot(::Type{MolSimStyle}, args...; kargs...) = Plots.plot(args...; _kargs(; kargs)...)
Plots.plot!(::Type{MolSimStyle}, args...; kargs...) = Plots.plot!(args...; _kargs(; kargs)...)
Plots.scatter(::Type{MolSimStyle}, args...; kargs...) = Plots.scatter(args...; _kargs(; kargs)...)
Plots.scatter!(::Type{MolSimStyle}, args...; kargs...) = Plots.scatter!(args...; _kargs(; kargs)...)
Plots.histogram(::Type{MolSimStyle}, args...; kargs...) = Plots.histogram(args...; _kargs(; kargs)...)
Plots.histogram!(::Type{MolSimStyle}, args...; kargs...) = Plots.histogram!(args...; _kargs(; kargs)...)
Plots.contour(::Type{MolSimStyle}, args...; kargs...) = Plots.contour(args...; _kargs(; kargs)...)
Plots.contour!(::Type{MolSimStyle}, args...; kargs...) = Plots.contour!(args...; _kargs(; kargs)...)
Plots.contourf(::Type{MolSimStyle}, args...; kargs...) = Plots.contourf(args...; _kargs(; kargs)...)
Plots.contourf!(::Type{MolSimStyle}, args...; kargs...) = Plots.contourf!(args...; _kargs(; kargs)...)
Plots.heatmap(::Type{MolSimStyle}, args...; kargs...) = Plots.heatmap(args...; _kargs(; kargs)...)
Plots.heatmap!(::Type{MolSimStyle}, args...; kargs...) = Plots.heatmap!(args...; _kargs(; kargs)...)
Plots.annotate!(::Type{MolSimStyle}, x, y, str; fontsize=12) = Plots.annotate!(x, y, Plots.text(str, "Computer Modern", fontsize))

