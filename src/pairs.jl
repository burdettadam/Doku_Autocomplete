using Base.Threads
using Combinatorics
#using ProgressMeter
using JLD

function unique(a::Array{Int64,1},b::Array{Int64,1})
    # check if there is any duplicates
    for i = 1:3
        @inbounds in(b[i],a) && return false
    end
    true
end

function is_duko(a::Array{Int64,1},b::Array{Int64,1})
    # unique row is given, we must test sub squares for
    # uniqueness, no repeating values.
    for idx in [1,4,7]
        @inbounds ta = a[idx:idx + 2] 
        @inbounds tb = b[idx:idx + 2]
        !unique(ta,tb) && return false
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

function combos(first_rows::Array{Array{Int64,1},1},
                first_rows_size::Int64, 
                processed::Int64)
    encoding = Array{Char,1}(undef,987)
    decoding = Dict{Char,Array{Int64}}()
    char = 33
    for combo in Combinatorics.combinations([1,2,3,4,5,6,7,8,9],3)
        sub = join(string.(combo))
        index = parse(Int64, sub)
        key = Char(char)
        encoding[index] = key
        decoding[key] = combo
        char += 1
    end
    # todo: save encoding
    n = 6
    #@showprogress
    for i = processed :n :first_rows_size #every possible first row
        combos = Dict{String,Array{Array{Char,1},1}}()
        Threads.@threads for k = 0:n-1 
            #i+k < processed && continue #processed row
            @inbounds pairs = [ first_rows[j] for j = 1:first_rows_size if  is_duko(first_rows[i+k], first_rows[j])]
            #println(length(pairs))
            @inbounds key = join(string.(first_rows[i+k]))
            #key = join(encode(encoding, first_rows[i+k])) # ascii as string breaks julia dictionarys...
            #println(pairs[1])
            @inbounds s_pairs = [encode(encoding, pairs[l]) for l = 1:length(pairs)]
            #println(key)
            #println(length(s_pairs))
            combos[key] = s_pairs

        end
        #save(joinpath(@__DIR__,"sets/",join([key,".jld"])), key, s_pairs)
        save(joinpath(@__DIR__,"sets/",join([string(i),"-",string(i+n),".jld"])), combos )
        combos = nothing
    end
end

function main()
    first_rows = Combinatorics.permutations([1,2,3,4,5,6,7,8,9]) |> collect 
    first_rows_size = length(first_rows)
    #processed = get()
    processed = 201430# if processed is None ? 0 : parse(Int8,processed)
    #println(processed)
    combos(first_rows,first_rows_size, processed)
    println("------------ completed ------------")
end

main()