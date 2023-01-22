map({ "n", "<F4>", ":lua require('dapui').toggle()<CR>" })
map({ "n", "<F5>", ":lua require('dap').toggle_breakpoint()<CR>" })
map({ "n", "<F9>", ":lua require('dap').continue()<CR>" })

map({ "n", "<F1>", ":lua require('dap').step_over()<CR>" })
map({ "n", "<F2>", ":lua require('dap').step_into()<CR>" })
map({ "n", "<F3>", ":lua require('dap').step_out()<CR>" })

map({ "n", "<Leader>dsc", ":lua require('dap').continue()<CR>" })
map({ "n", "<Leader>dsv", ":lua require('dap').step_over()<CR>" })
map({ "n", "<Leader>dsi", ":lua require('dap').step_into()<CR>" })
map({ "n", "<Leader>dso", ":lua require('dap').step_out()<CR>" })

map({ "n", "<Leader>dhh", ":lua require('dap.ui.variables').hover()<CR>" })
map({ "v", "<Leader>dhv", ":lua require('dap.ui.variables').visual_hover()<CR>" })

map({ "n", "<Leader>duh", ":lua require('dap.ui.widgets').hover()<CR>" })
map({ "n", "<Leader>duf", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>" })

map({ "n", "<Leader>dro", ":lua require('dap').repl.open()<CR>" })
map({ "n", "<Leader>drl", ":lua require('dap').repl.run_last()<CR>" })

map({ "n", "<Leader>dbc", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>" })
map({ "n", "<Leader>dbm", ":lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>" })
map({ "n", "<Leader>dbt", ":lua require('dap').toggle_breakpoint()<CR>" })

map({ "n", "<Leader>dc", ":lua require('dap.ui.variables').scopes()<CR>" })
map({ "n", "<Leader>di", ":lua require('dapui').toggle()<CR>" })

