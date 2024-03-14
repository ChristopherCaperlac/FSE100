function clearKey(eventKey)
    global key
    global keyMemory
    keyMemory(keyMemory == eventKey) = [];
    key = char(keyMemory(1));
end