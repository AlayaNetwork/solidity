contract test {
    function f() public {
        address("atp1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqjt84lrv").delegatecall("abc");
    }
}
// ----
// Warning 9302: (50-123): Return value of low-level calls not used.
