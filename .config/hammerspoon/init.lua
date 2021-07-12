hs.loadSpoon("SpoonInstall")

-- ShiftIt
spoon.SpoonInstall.repos.ShiftIt = {
   url = "https://github.com/peterklijn/hammerspoon-shiftit",
   desc = "ShiftIt spoon repository",
   branch = "master",
}
spoon.SpoonInstall:andUse("ShiftIt", { repo = "ShiftIt" })
spoon.ShiftIt:bindHotkeys({
   left = {{ 'ctrl', 'cmd', 'alt' }, 'left' },
   right = {{ 'ctrl', 'cmd', 'alt' }, 'right' },
   up = {{ 'ctrl', 'cmd', 'alt' }, 'up' },
   down = {{ 'ctrl', 'cmd', 'alt' }, 'down' },
   upleft = {{ 'ctrl', 'cmd', 'alt' }, '1' },
   upright = {{ 'ctrl', 'cmd', 'alt' }, '2' },
   botleft = {{ 'ctrl', 'cmd', 'alt' }, '3' },
   botright = {{ 'ctrl', 'cmd', 'alt' }, '4' },
   center = {{ 'ctrl', 'cmd', 'alt' }, 'c' },
   maximum = {{ 'ctrl', 'cmd', 'alt' }, 'm' }
});

-- Overwrite Slack and Discord Shortcuts
local keybinds = {
   -- 次の未読チャンネルに移動
   hs.hotkey.new({"alt"}, "e", function()
     hs.eventtap.keyStroke({"alt", "shift"}, "Down")
   end),
   -- 前の未読チャンネルに移動
   hs.hotkey.new({"alt", "shift"}, "e", function()
     hs.eventtap.keyStroke({"alt", "shift"}, "Up")
   end)
 }
 local appWatcher = hs.application.watcher.new(function(name, eventType, app)
   if eventType ~= hs.application.watcher.activated then return end
   -- Slack または Discord を起動したときは enable, それ以外を起動したときは disable
   local fnName = (name == "Slack" or name == "Discord") and "enable" or "disable"
   for i, keybind in ipairs(keybinds) do
     keybind[fnName](keybind)
   end
 end)
 appWatcher:start()
