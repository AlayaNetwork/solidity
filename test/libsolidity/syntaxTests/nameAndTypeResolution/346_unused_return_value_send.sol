contract test {
    function f() public {
        address(0x12).send(1);
    }
}
// ----
// Warning: (50-111): Failure condition of 'send' ignored. Consider using 'transfer' instead.
