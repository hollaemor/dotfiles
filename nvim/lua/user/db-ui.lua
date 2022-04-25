vim.cmd[[

try
  let g:db_ui_save_location = '~/Documents/work/db_queries'
catch /.*/
  vim.notify('could not set DB_UI save location')
endtry
]]
