contract A {
	receive() external payable {
		revert("no_receive");
	}
}

contract C {
	A a = new A();
	receive() external payable {}
	function f() public {
		payable(a).transfer(1 von);
	}
	function h() public {
		payable(a).transfer(100 atp);
	}
	function g() public view returns (uint) {
		return payable(this).balance;
	}
}
// ====
// EVMVersion: >=byzantium
// compileViaYul: also
// revertStrings: debug
// ----
// (), 10 von ->
// g() -> 10
// f() -> FAILURE, hex"08c379a0", 0x20, 10, "no_receive"
// h() -> FAILURE
