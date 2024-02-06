function warp(world, id)
    local countWarp = 0
    if id == nil or id == "" then
        while getWorld().name:upper() ~= world:upper() do
            getBot():warp(world)
            sleep(5000)
            countWarp = countWarp + 1
            if countWarp >= 5 then
                countWarp = 0
                getBot():disconnect()
                sleep(10000)
                while getBot().status ~= BotStatus.online do
                    getBot():connect()
                    sleep(5000)
                end
            end
        end
    else
        while getWorld().name:upper() ~= world:upper()
        or getWorld():getTile(math.floor(getWorld():getLocal().posx/32), math.floor(getWorld():getLocal().posy/32)).fg == 6 do
            getBot():warp(world, id)
            sleep(5000)
            countWarp = countWarp + 1
            if countWarp >= 5 then
                countWarp = 0
                getBot():disconnect()
                sleep(10000)
                while getBot().status ~= BotStatus.online do
                    getBot():connect()
                    sleep(5000)
                end
            end
        end
    end
end 