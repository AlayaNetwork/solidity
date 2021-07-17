contract C {
    receive(uint256) external payable {}
}
// ----
// DeclarationError 6857: (24-33): Receive atp function cannot take parameters.
