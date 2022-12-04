local res = {}

local function bind(op,outer_opts)
    outer_opts = outer_opts or { noremap = true }
    return function(lhs,rhs,opts)
        opts = vim.tbl_extend("force",outer_opts,opts or {})
        vim.keymap.set(op,lhs,rhs,opts)
    end
end

res.nmap = bind("n" ,{noremap = false})
res.nnoremap = bind("n")
res.vnoremap = bind("v")
res.xnoremap = bind("x")
res.inoremap = bind("i")

return res
