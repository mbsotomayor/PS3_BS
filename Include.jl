# setup some paths -
_PATH_TO_ROOT = pwd()
_PATH_TO_SRC = joinpath(_PATH_TO_ROOT,"src")
_PATH_TO_CONFIG = joinpath(_PATH_TO_SRC,"config")

# Setup my environment -
import Pkg
Pkg.activate(_PATH_TO_ROOT)
Pkg.instantiate()

# load external packages -
using GLPK
using DelimitedFiles
using LinearAlgebra

# load my codes -
my_files_to_include = [
    "Problem.jl" ;
    "Flux.jl"   ;
]

for (index, file_name) in enumerate(my_files_to_include)
    path_to_code = joinpath(_PATH_TO_SRC,file_name)
    include("$(path_to_code)")
end
