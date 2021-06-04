local function RetrieveSource(Link, Root)
    Link = tostring(Link)
    if string.match(Link, "^https://") then
        return game:HttpGet(Link, true)
    elseif Root then
        return game:HttpGet("https://raw.githubusercontent.com/The-Developer-Nate/Roblo-X/main/" .. Link)
    else
        return game:HttpGet("https://raw.githubusercontent.com/The-Developer-Nate/Roblo-X/main/src/" .. Link)
    end
end