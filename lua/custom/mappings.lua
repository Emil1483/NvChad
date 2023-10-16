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

M.python = {
  n = {
    ["<leader>pp"] = {"<cmd> update<bar>:term python3 %<CR>", "Run current python file"}
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

M.go = {
  n = {
    ["<leader>pg"] = {
      "<cmd> update<bar>:term go run main.go <CR>",
      "Run main.go file"
    }
  }
}

return M
