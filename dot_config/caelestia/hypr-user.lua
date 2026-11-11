local function is_charging()
    local f = io.open("/sys/class/power_supply/ACAD/online", "r")
    if not f then
        f = io.open("/sys/class/power_supply/AC/online", "r")
    end
    if f then
        local val = f:read("*l")
        f:close()
        return val == "1"
    end
    return false
end

local refresh = is_charging() and "165" or "60"

hl.monitor({
    output = "eDP-1",
    mode = "2560x1440@" .. refresh,
    position = "0x0",
    scale = 1,
})

hl.bind("SUPER + SHIFT + W", hl.dsp.global("caelestia:wallpaper"))



























