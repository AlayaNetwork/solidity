contract test {
    function f() public {
        address(0x12).delegatecall("abc");
    }
}
// ----
// Warning: (50-123): Return value of low-level calls not used.
