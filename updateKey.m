function updateKey(eventKey)
    global key
    global keyMemory
    if eventKey ~= char(keyMemory(1))
    keyMemory = [eventKey, keyMemory];
    end
    key = char(keyMemory(1));
end