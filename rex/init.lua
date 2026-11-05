-- rex.bind(key, action [, args])
rex.bind("ctrl+shift+[", "session.previous")
rex.bind("ctrl+shift+]", "session.next")

-- Resize mode: only these keys work while it's active, so stray keys don't reach the shell
rex.mode("resize", { exclusive = true })
rex.bind("cmd+r", "client.mode.enter", { name = "resize" })

for key, dir in pairs({ h = "left", j = "down", k = "up", l = "right",
                        left = "left", down = "down", up = "up", right = "right" }) do
  rex.bind("resize/" .. key, "pane.resize", { direction = dir })
  rex.bind("resize/shift+" .. key, "pane.resize", { direction = dir, amount = 15 })
end

rex.bind("resize/=", "pane.balance")          -- make all splits equal
rex.bind("resize/enter", "client.mode.exit")  -- Escape exits too

-- Rename tab and session (cmd+shift+s shadows the default Toggle Tab Style)
rex.bind("cmd+shift+t", "client.tab.rename")
rex.bind("cmd+shift+s", "session.rename")
