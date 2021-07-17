contract C {
    modifier tryCircumvent {
        if (false) _; // avoid the function, we should still not accept atp
    }
    function f() tryCircumvent public returns (uint) {
        return msgvalue();
    }
    function msgvalue() internal returns (uint) {
        return msg.value;
    }
}
// ====
// compileViaYul: also
// compileToEwasm: also
// ----
// f(), 27 von -> FAILURE
// balance -> 0
