local util = require 'lspconfig.util'

local cmd = { 'alster' }

return {
  default_config = {
    cmd = cmd,
    filetypes = { 'agda', 'lagda' },
    root_dir = util.root_pattern '*.agda-lib',
    settings = {
      ['Alster'] = {},
    },
  },
  docs = {
    description =[[
https://github.com/phijor/alster

A POC Agda Language Server.

Configuration:

```lua
  require('lspconfig').alster.setup {
    cmd = { '/custom/path/to/alster', 'arg1', 'arg2', ... },
    settings = {
      Alster = { ... },
    },
  }
```
]],
  },
}
