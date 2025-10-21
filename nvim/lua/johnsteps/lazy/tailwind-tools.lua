return {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" },
    opts = {
        server = {
            override = true,
            settings = {},
            on_attach = function(client, bufnr)
            end,
        },
        document_color = {
            enabled = true,
            kind = "inline",
            inline_symbol = "󰝤 ",
            debounce = 200,
        },
        conceal = {
            enabled = false,
            symbol = "󱏿",
        },
    },
}
