contract C {
    receive () payable external { }
}
// ====
// compileToEwasm: also
// compileViaYul: also
// ----
// (), 1 atp
// (), 1 atp: 1 -> FAILURE
