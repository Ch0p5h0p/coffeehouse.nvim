# Coffeehouse.nvim

A coffee-flavored theme for the best terminal editor around

## Installation
Only tested on Lazy since that's what I use.
```lua
{
    "Ch0p5h0p/coffeehouse.nvim",
    dependencies = {
        "rktjmp/lush.nvim",
    },
}
```

In your `init.lua`, add this:
```lua
vim.g.coffeehouse_flavor = espresso -- or whatever flavor you want
vim.cmd.colorscheme "coffeehouse"
```

## Included flavors
- Espresso (`espresso`): The default theme, dark like the coffee it's named after, with lighter syntax colors then Dark Roast
- Dark Roast (`dark_roast`): A bit lighter than Espresso
- Latte (`latte`): Made for light-mode editing
