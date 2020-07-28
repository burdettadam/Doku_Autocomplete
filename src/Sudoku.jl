using Combinatorics
using ProgressMeter
using JLD

function unique(a::Array{Char,1},b::Array{Char,1})
    # check if there is any duplicates
    for i = 1:3
        @inbounds in(b[i],a) && return false
    end
    true
end

function unique_sub(a::Array{Char,1},b::Array{Char,1},c::Array{Char,1})
    # check if there is any duplicates
    for i = 1:3
        @inbounds in(c[i],a) && return false
        @inbounds in(c[i],b) && return false
    end
    true
end

function is_duko(a::Array{Char,1},b::Array{Char,1})
    # unique row is given, we must test sub squares for
    # uniqueness, no repeating values.
    for idx in [1,4,7]
        @inbounds ta = a[idx:idx + 2] 
        @inbounds tb = b[idx:idx + 2]
        !unique(ta,tb) && return false
    end
    true
end

function is_soduko(a::Array{Char,1},b::Array{Char,1},c::Array{Char,1})
    # unique row is given, we must test sub squares for
    # uniqueness, no repeating values.
    for idx in [1,4,7]
        @inbounds ta = a[idx:idx + 2] 
        @inbounds tb = b[idx:idx + 2]
        @inbounds tc = c[idx:idx + 2]
        !unique_sub(ta,tb,tc) && return false
    end
    true
end

function is_tower(first::Array{Char,1}, second::Array{Char,1}, third::Array{Char,1}, fourth::Array{Char,1})
    for idx = [1,2,3,4,5,6,7,8,9]
        fourth[idx] == third[idx] && return false
        fourth[idx] == second[idx] && return false
        fourth[idx] == first[idx] && return false
    end
    true
end

function is_tall_tower(first::Array{Char,1}, second::Array{Char,1}, third::Array{Char,1}, fourth::Array{Char,1}, fith::Array{Char,1}, sixth::Array{Char,1}, seventh::Array{Char,1})
    for idx = [1,2,3,4,5,6,7,8,9]
        seventh[idx] == sixth[idx] && return false
        seventh[idx] == fith[idx] && return false
        seventh[idx] == fourth[idx] && return false
        seventh[idx] == third[idx] && return false
        seventh[idx] == second[idx] && return false
        seventh[idx] == first[idx] && return false
    end
    true
end

function encode(encoding::Array{Char,1},set::Array{Int64,1})
    # strategy, to save space and memory, take every possible 3 combinations
    # of [1-9], which happens to be 84, and represent them as an ascii char.
    # this will take a normal row, [123456789] to something like [!.@.$], saving space.
    # an array is used where the 3 combo is represented as an int, 987 being the largest,
    # encoding char is stored in that location, allowing fast lookups.
    @inbounds _a = set[1:3]
    @inbounds _b = set[4:6]
    @inbounds _c = set[7:9]
    a = encoding[ parse(Int64, join(string.(_a)) ) ]
    b = encoding[ parse(Int64, join(string.(_b)) ) ]
    c = encoding[ parse(Int64, join(string.(_c)) ) ]
    return [a,b,c]
end


function main()
    first = ['A','B','C','D','E','F','G','H','I']
    row_permutations = Combinatorics.permutations(first) |> collect 
    row_permutations_size = length(row_permutations)
    #println(row_permutations_size)
    ciphertext = Dict{String,Array{Array{Char,1},1}}()
    pairs = Array{Array{Array{Char,1},1},1}()
    for i = 1:row_permutations_size # for every possible 2nd row
        @inbounds second = row_permutations[i]
        if  is_duko(first , second)
            for j = 1:row_permutations_size # for every possible 3rd row
                @inbounds third = row_permutations[j]
                if is_soduko( first , second, third)
                    for k = 1:row_permutations_size
                        @inbounds fourth = row_permutations[k]
                        if is_tower(first, second, third, fourth) 
                            for l = 1:row_permutations_size
                                @inbounds fith = row_permutations[l]
                                if is_duko(fourth, fith)
                                    for m = 1:row_permutations_size
                                        @inbounds sixth = row_permutations[m]
                                        if is_soduko(fourth, fith, sixth)
                                            for n = 1:row_permutations_size
                                                @inbounds seventh = row_permutations[n]
                                                if is_tall_tower(first, second, third, fourth, fith, sixth, seventh)
                                                    for o = 1:row_permutations_size
                                                        @inbounds eighth = row_permutations[o]
                                                        if is_duko(seventh , eighth)
                                                            for p = 1:row_permutations_size
                                                                @inbounds ninth = row_permutations[p]
                                                                if is_soduko(seventh , eighth, ninth)
                                                                    println("Winner Winner Winner, pumpkin dinner!")
                                                                    #push!(pairs,[ first, second, third, fourth, fith, sixth, seventh, eighth, ninth ])
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    println(length(pairs))
    #key = "SudokuPlainTexts" #join(first_row)
    #save(joinpath(@__DIR__,"sets/",join([key,".jld"])), key, pairs)
    #save(joinpath(@__DIR__,"sets/",join([string(i),"-",string(i+n),".jld"])), combos )
    #combos = nothing
    println("------------ completed ------------")
end

main()