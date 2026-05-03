return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.formatting.pyink,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.pylint,
                require("none-ls.diagnostics.cpplint"),
                null_ls.builtins.diagnostics.golangci_lint,
                require("none-ls.diagnostics.eslint_d"),
                null_ls.builtins.diagnostics.stylelint,
            },
        })
        vim.keymap.set("n", "<space>gf", vim.lsp.buf.format, {})
    end,
}
