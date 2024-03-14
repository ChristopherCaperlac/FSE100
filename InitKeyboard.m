function InitKeyboard
    global key
    global keyMemory
    global h
    keyMemory = '0';
    key = char(keyMemory(1));
    text(1) = {'Click on this window and press any key to control your robot.'};
    text(2) = {'The key currently being pressed is in the "key" variable.'};
    h = figure;
    set(h, 'KeyPressFcn', @(h_obj, evt) updateKey(evt.Key));
    set(h, 'KeyReleaseFcn', @(h_obj, evt) clearKey(evt.Key));
    textbox = annotation(h, 'textbox',[0,0,1,1]);
    set(textbox,'String', text);
end