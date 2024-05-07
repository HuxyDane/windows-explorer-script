#NoEnv
SetBatchLines, -1
Return

~LButton::
   if ( IsDblClick() && (hWnd := WinActive("ahk_class CabinetWClass")) && IsEmptySpace() )
      NavigateToParentDir(hWnd)
   Return
   
IsDblClick() {
    static LastClickTime := 0, TimeBetweenClicks := 0
    CurrentTime := A_TickCount
    TimeSinceLastClick := CurrentTime - LastClickTime

    if (TimeSinceLastClick > 600) {  ; Если интервал между кликами больше 600 мс, считаем это новой серией кликов
        TimeBetweenClicks := 0
    }

    LastClickTime := CurrentTime
    PrevTimeBetweenClicks := TimeBetweenClicks
    TimeBetweenClicks := TimeSinceLastClick

    ; Проверяем два быстрых клика с допустимым интервалом перед ними
    return (TimeSinceLastClick < 400 && (PrevTimeBetweenClicks > 400 || PrevTimeBetweenClicks = 0))
}
   
IsEmptySpace() {
   static ROLE_SYSTEM_LIST := 0x21
   CoordMode, Mouse
   MouseGetPos, X, Y
   AccObj := AccObjectFromPoint(idChild, X, Y)
   Return AccObj.accRole(0) = ROLE_SYSTEM_LIST
}

AccObjectFromPoint(ByRef _idChild_ = "", x = "", y = "") {
   static VT_DISPATCH := 9, F_OWNVALUE := 1, h := DllCall("LoadLibrary", "Str", "oleacc", "Ptr")
   
   (x = "" || y = "") ? DllCall("GetCursorPos", "Int64P", pt) : pt := x & 0xFFFFFFFF | y << 32
   VarSetCapacity(varChild, 8 + 2*A_PtrSize, 0)
   if DllCall("oleacc\AccessibleObjectFromPoint", "Int64", pt, "PtrP", pAcc, "Ptr", &varChild) = 0
      Return ComObject(VT_DISPATCH, pAcc, F_OWNVALUE), _idChild_ := NumGet(varChild, 8, "UInt")
}

NavigateToParentDir(hWnd) {
    Send, !{Up}  ;
}
