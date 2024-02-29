num_in_majors = [
    ("Computer Science", 250), 
    ("Math", 200), 
    ("Communications", 150), 
    ("Psychology", 320), 
    ("Physics", 100),
    ("Chemistry", 300),
    ("Business", 250),
    ("History", 175),
    ("haha", 0),
]

majors_dict = Dict(num_in_majors)

function lookup(key, table)
    for (k, v) in table
        if key == k
            return v
        end 
    end
    throw(KeyError(key))
end

function how_many(key, table)
    try 
        v = lookup(key, table)
        if v <= 50
            printstyled("HAHAHA you only have ", v, " number of people!", color=:red)
        elseif 50 < v <= 100
            printstyled("Okok some people must like you a little since you got ", v, " many people!", color=:yellow)
        elseif 100 < v <= 200
            printstyled("Nice you got a solid fanbase backing you up since you have ", v, " majors.", color=:green)
        else
            printstyled("You have too many people for me to even count...", color=:cyan)
        end
    catch e
        printstyled("Oops, your major doesn't exist", color=:magenta)
    end
end

