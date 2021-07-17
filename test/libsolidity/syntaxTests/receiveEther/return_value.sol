contract C {
    receive() external returns (uint256) {}
}
// ----
// DeclarationError 7793: (17-56): Receive atp function must be payable, but is "nonpayable".
// DeclarationError 6899: (44-53): Receive atp function cannot return values.
