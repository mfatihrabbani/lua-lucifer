itemId = 3004

delayPlace = 200
delayHit = 200

coordinatBreak = {
    x = 10,
    y = 23
}

BOT = getBot()

function getTileBot()
    local x = math.floor(BOT:getWorld():getLocal().x/32)
    local y = math.floor(BOT:getWorld():getLocal().y/32)
    return {
        x = x,
        y = y
    }
end

function moveToPlacePnb()
    while getTileBot().x ~= coordinatBreak.x or getTileBot().y ~= coordinatBreak.y do
        BOT:findPath(coordinatBreak.x, coordinatBreak.y)
        sleep(3000)
    end
end

function pnb()
    BOT.auto_collect = true
    BOT.collect_range = 2
    while BOT:getInventory():getItemCount(itemId) ~= 0 do
        while BOT:getWorld():getTile(coordinatBreak.x, coordinatBreak.y - 1).fg == 0 
        and BOT:getWorld():getTile(coordinatBreak.x, coordinatBreak.y - 1).bg == 0 do
            BOT:place(coordinatBreak.x, coordinatBreak.y - 1)
            sleep(delayPlace)
        end
        while BOT:getWorld():getTile(coordinatBreak.x, coordinatBreak.y - 1).fg ~= 0
        or BOT:getWorld():getTile(coordinatBreak.x, coordinatBreak.y - 1).bg ~= 0 do
            BOT:hit(coordinatBreak.x, coordinatBreak.y - 1)
            sleep(delayHit)
        end
    end
end

function main()
    BOT:warp(worldBreak, idWorldBreak)
    sleep(4000)
    moveToPlacePnb()
    pnb()
end

main()