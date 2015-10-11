for i, player in ipairs(game.players) do
    player.force.reset_recipes()
    player.force.reset_technologies()
    if player.force.technologies["alien-technology"].researched then 
        player.force.recipes["alien-cable"].enabled = true
    end
    if player.force.technologies["fusion-reactor-equipment"].researched then
        player.force.recipes["alien-fuel"].enabled = true
    end
end