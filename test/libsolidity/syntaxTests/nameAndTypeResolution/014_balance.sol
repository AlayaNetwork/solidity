contract test {
    function fun() public {
        uint256 x = address(0).balance;
    }
}
// ----
// Warning: (52-61): Unused local variable.
// Warning: (20-132): Function state mutability can be restricted to view
