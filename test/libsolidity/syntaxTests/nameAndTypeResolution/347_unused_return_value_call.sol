contract test {
    function f() public {
        address(0x12).call("abc");
    }
}
// ----
// Warning: (50-115): Return value of low-level calls not used.
