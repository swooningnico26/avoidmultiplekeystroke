keylist = 1234567890qwertzuiopasdfghjklyxcvbnm

Loop, parse, keylist
{
  Hotkey, $%A_LoopField%, spamLimitNoParam
}    
Return


; This can be located anywhere in the AHK file
spamLimitNoParam:
spamLimit(200)
Return

spamLimit(limitTime)
{
    StringReplace, key, A_ThisHotkey, $, , All
    send %key%
    sleep limitTime    
}