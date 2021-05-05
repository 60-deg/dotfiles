hs.loadSpoon("SpoonInstall")

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
