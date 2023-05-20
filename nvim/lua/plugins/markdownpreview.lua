-- Set to 1, nvim will open the preview window after entering the markdown buffer
-- default: 0
vim.g.mkdp_auto_start = 0

-- Set to 1, the nvim will auto close current preview window when change
-- from markdown buffer to another buffer
-- default: 1
vim.g.mkdp_auto_close = 1

-- Set to 1, the vim will refresh markdown when save the buffer or
-- leave from insert mode, default 0 is auto refresh markdown as you edit or
-- move the cursor
-- default: 0
vim.g.mkdp_refresh_slow = 0

-- Set to 1, the MarkdownPreview command can be use for all files,
-- by default it can be use in markdown file
-- default: 0
vim.g.mkdp_command_for_global = 0

-- Set to 1, preview server available to others in your network
-- by default, the server listens on localhost (127.0.0.1)
-- default: 0
vim.g.mkdp_open_to_the_world = 0

-- Use custom IP to open preview page
-- useful when you work in remote vim and preview on local browser
-- more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
-- default: empty
vim.g.mkdp_open_ip = ''

-- Specify browser to open preview page
-- for path with space
-- valid: `/path/with\ space/xxx`
-- invalid: `/path/with\\ space/xxx`
-- default: ''
vim.g.mkdp_browser = ''

-- Set to 1, echo preview page URL in command line when open preview page
-- default is 0
vim.g.mkdp_echo_preview_url = 0

-- A custom vim function name to open preview page
-- this function will receive URL as param
-- default is empty
vim.g.mkdp_browserfunc = ''

-- Options for markdown render
-- mkit: markdown-it options for render
-- katex: katex options for math
-- uml: markdown-it-plantuml options
-- maid: mermaid options
-- disable_sync_scroll: if disable sync scroll, default 0
-- sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
--   middle: mean the cursor position always show at the middle of the preview page
--   top: mean the vim top viewport always show at the top of the preview page
--   relative: mean the cursor position always show at the relative position of the preview page
-- hide_yaml_meta: if hide yaml metadata, default is 1
-- sequence_diagrams: js-sequence-diagrams options
-- content_editable: if enable content editable for preview page, default: v:false
-- disable_filename: if disable filename header for preview page, default: 0
vim.g.mkdp_preview_options = {
  mkit = {},
  katex = {},
  uml = {},
  maid = {},
  disable_sync_scroll = 0,
  sync_scroll_type = 'middle',
  hide_yaml_meta = 1,
  sequence_diagrams = {},
  flowchart_diagrams = {},
  content_editable = false,
  disable_filename = 0,
  toc = {}
}

-- Use a custom markdown style, must be an absolute path
-- like '/Users/username/markdown.css' or expand('~/markdown.css')
vim.g.mkdp_markdown_css = ''

-- Use a custom highlight style, must be an absolute path
-- like '/Users/username/highlight.css' or expand('~/highlight.css')
vim.g.mkdp_highlight_css = ''

-- Use a custom port to start server or empty for random
vim.g.mkdp_port = ''

-- Preview page title
-- ${name} will be replaced with the file name
vim.g.mkdp_page_title = '「${name}」'

-- Recognized filetypes
-- These filetypes will have MarkdownPreview... commands
vim.g.mkdp_filetypes = {'markdown'}

-- Set default theme (dark or light)
-- By default, the theme is defined according to the preferences of the system
vim.g.mkdp_theme = 'dark'

