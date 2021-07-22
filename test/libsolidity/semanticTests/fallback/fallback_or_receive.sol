contract C {
    uint x;
    uint y;
    fallback () payable external { ++x; }
    receive () payable external { ++y; }
    function f() external returns (uint, uint) { return (x, y); }
}
// ====
// compileViaYul: also
// compileToEwasm: also
// ----
// f() -> 0, 0
// () ->
// f() -> 0, 1
// (), 1 atp ->
// f() -> 0, 2
// (): 1 ->
// f() -> 1, 2
// (), 1 atp: 1 ->
// f() -> 2, 2
