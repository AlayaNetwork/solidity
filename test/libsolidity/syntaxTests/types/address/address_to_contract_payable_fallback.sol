contract C {
  function f() public pure returns (C c) {
    c = C(address(2));
  }
  function() external payable {
  }
}
// ----
// ParserError: (74-123): Expected string end-quote.
