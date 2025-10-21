return {
    "olrtg/nvim-emmet",
    ft = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" },
    config = function()
        vim.keymap.set({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation, { desc = "Emmet wrap" })
    end,
}
