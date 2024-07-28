function main(...)
  local arguments = {...}

  local name, err = ask("What's your name? ")
  if err ~= nil then
    eprintf("An error occurred while getting input (4): \n", err)
    return 1
  end
  printf("Hello, %s!\n", name)

  return 0
end

function printf(format, ...)
  io.stdout:write(string.format(format, ...))
end

function eprintf(format, ...)
  io.stderr:write(string.format(format, ...))
end

function ask(question)
  io.stdout:write(question)
  local passed, result = pcall(io.stdin.read, io.stdin, "l")
  if passed then
    return result, nil
  end
  return nil, result
end

------------------------------------DO NOT TOUCH-----------------------------------------

local code = main()
while code < 0 do
  code = 256 + code
end
if code ~= 0 then
  eprintf("Exited with code %d.\n", code)
end