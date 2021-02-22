world = love.physics.newWorld(0, 9,82*64, true)

local begin_contact_callback = function(fixture_a, fixture_b, contact)
    local objects_a = fixture_a:getUserData()
    local objects_b = fixture_b:getUserData()
    if objects_a.begin_contact then objects_a:begin_contact() end
    if objects_b.begin_contact then objects_b:begin_contact() end
end

--local end_contact_callback = function(fixture_a, fixture_b, contact)
--end
--local pre_solve_callback = function(fixture_a, fixture_b, contact)
--end
--local post_solve_callback = function(fixture_a, fixture_b, contact)
--end

world:setCallbacks(
  begin_contact_callback,
  nil,
  nil,
  nil
)

return world