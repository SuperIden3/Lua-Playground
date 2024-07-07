function main(...)
  local arguments = {...}
  print("Hello World!")
end

function eprint(message, ...)
  local args = {...}
  io.stderr:write(message .. "\t")
    for i, arg in ipairs(args) do
        io.stderr:write(tostring(arg) .. "\t")
    end
    io.stderr:write("\n")
end

------------------------------------DO NOT TOUCH-----------------------------------------

main()