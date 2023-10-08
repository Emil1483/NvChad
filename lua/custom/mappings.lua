local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"},
    ["<leader>dc"] = {"<cmd> DapContinue <CR>"},
    ["<leader>dt"] = {"<cmd> DapTerminate <CR>"},
    ["<leader>dsi"] = {"<cmd> DapStepInto <CR>"},
    ["<leader>dso"] = {"<cmd> DapStepOut <CR>"},
    ["<leader>dsk"] = {"<cmd> DapStepOver <CR>"},
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<F5>"] = {
      function ()
        require("dap").continue()
      end
    },
    ["<leader>dpr"] = {
      function ()
        require("dap-python").test_method()
      end
    }
  }
}

return M
