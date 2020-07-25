using Distributed
using Combinatorics
using Redis
using ProgressMeter
using JLD

function unique(a::Array{Int64,1},b::Array{Int64,1})
    for i = 1:3
        in(b[i],a) && return false
    end
    true
end

function is_duko(a::Array{Int64,1},b::Array{Int64,1})
    for idx = 1:6:3
        a = a[idx:idx + 3] 
        b = b[idx:idx + 3]
        !unique(a,b) && return false
    end
    true
end

function combos(first_rows::Array{Array{Int64,1},1},
                first_rows_size::Int64, 
                processed::Int64, 
                redisClient::Any )
    pairs = []
    for i = 1 : first_rows_size #every possible first row
        i < processed && continue #processed row
        #pairs = [ first_rows[j] for j = 1:first_rows_size if is_duko(first_rows[i], first_rows[j])]
        temp = pairs
        pairs = [ j for j = 1:first_rows_size if is_duko(first_rows[i], first_rows[j])]
        diff = setdiff(temp, pairs) 
        length(diff) > 0 && println("index ",i," previous: ",temp[1]," After: ", pairs[1]," 1st_Diff: ", diff[1], " DIFF_SIZE: ", length(diff)," shift:",temp[1] - pairs[1])
        #@distributed for j = 1 : 362880 
        #    is_duko(first_rows[i], first_rows[j])
        #end
        #println(length(pairs))
        #key = join(string.(first_rows[i]),',')
        #save(joinpath(@__DIR__,"",key,".jld"), key, pairs)
    end
end

function main()
    n = 960
    script_dir = @__DIR__

    redisClient = RedisConnection() # host=127.0.0.1, port=6379, db=0, no password
    #pipe = open_pipeline(redisClient)

    first_rows = Combinatorics.permutations([1,2,3,4,5,6,7,8,9]) |> collect 
    first_rows_size = length(first_rows)
    
    #processed = get(redisClient,'processed')
    processed = 0# if processed is None ? 0 : parse(Int8,processed)
    #println(processed)
    #print(comb(362880,2))
    combos(first_rows,first_rows_size, processed, redisClient )
    println("------------ completed ------------")
end

main()