contract test {
    function f() public {
        address("atp1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqjt84lrv").call("abc");
    }
}
// ----
// Warning 9302: (50-115): Return value of low-level calls not used.
