return {
    "saghen/blink.cmp",
    lazy = false,
    dependencies = "rafamadriz/friendly-snippets",
    version = "v0.*",
    build = "cargo build --release",
    opts = {
        keymap = { preset = "default" },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono",
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        completion = {
            menu = {
                draw = {
                    columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
                },
            },
        },
    },
    opts_extend = { "sources.default" },
}
