local function vim_mode(key, env)
    if key:repr() == "Escape" then
        local get_ascii_mode = env.engine.context:get_option("ascii_mode")
        if not get_ascii_mode then
            env.engine.context:set_option("ascii_mode", true)
        end
        env.engine.commit_text("Escape")

        return 1
    end

    if key:repr() == "Control+bracketleft" then
        local get_ascii_mode = env.engine.context:get_option("ascii_mode")
        if not get_ascii_mode then
            env.engine.context:set_option("ascii_mode", true)
        end
        env.engine.commit_text("Control+bracketleft")

        return 1
    end

    return 2
end
return vim_mode
-- 新键位工作正常



