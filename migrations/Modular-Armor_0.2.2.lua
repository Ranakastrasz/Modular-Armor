for _,player in pairs(game.players) do
   player.force.reset_recipes()
   player.force.reset_technologies()
end


for index, force in pairs(game.forces) do
    if force.technologies["fusion-reactor-equipment"].researched then
        force.recipes["alien-fuel"].enabled = true
        force.recipes["alien-rocket-fuel"].enabled = true
    end
end