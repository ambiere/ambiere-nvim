require("lspconfig").tailwindcss.setup({
  settings = {
    tailwindCSS = {
      classAttributes = {
        "class",
        "className",
        "styles",
        "style",
      },
    },
  },
})
