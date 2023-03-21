local M = {}

function M.file_exists(name)
  local f=io.open(name,"r")
  if f~=nil then io.close(f) return true else return false end
end

function M.dev_mode()
  return M.file_exists("../.dev")
end


return M
