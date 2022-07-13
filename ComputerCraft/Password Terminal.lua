-- Password Terminal

-- File needs to be named startup in terminal so it doesn't shutoff due to chunk loading 

os.pullEvent = os.pullEventRaw

local pass = "SOMA"

while true do
    term.clear()
    term.setCursorPos(1,1)
    print("Enter password: ")
    input = read()
    if input == pass then
        redstone.setOutput("back", true)
        sleep(5)
        redstone.setOutput("back", false)
    else
        print("Wrong password")
    end
end