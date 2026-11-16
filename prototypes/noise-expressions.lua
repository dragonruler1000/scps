data:extend {
    {
        type = "noise-function",
        name = "enemy_autoplace_portal",
        parameters = { "distance_factor", "seed" },
        expression = "random_penalty{x = x + seed,\z
                                 y = y,\z
                                 source = min(enemy_base_probability * max(0, 1 + 0.4 * distance_factor * (-312 * distance_factor - starting_area_radius + distance)),\z
                                              0.25 + distance_factor * 0.05),\z
                                 amplitude = 0.1}"
    }
}
