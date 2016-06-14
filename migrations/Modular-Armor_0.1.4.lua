for i, player in ipairs(game.players) do
    player.force.reset_recipes()
    player.force.reset_technologies()
    if player.force.technologies["fusion-reactor-equipment"].researched then
        player.force.recipes["alien-rocket-fuel"].enabled = true
    end

end