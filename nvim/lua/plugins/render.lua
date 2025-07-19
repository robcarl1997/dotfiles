return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = ":call mkdp#util#install()",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_preview_options = {
      markdown = {
        root = vim.fn.getcwd()
      }
    }
  end,
}

