# include all my files, and setup the environment -
include("Include.jl")

# main -
function main()

    # generate the problem dictionary -
    problem_dictionary = generate_problem_dictionary()

    # pass the problem dictionary to the GLPK wrapper -
    return calculate_optimal_flux_distribution(problem_dictionary)
end

# execute main -
results = main()