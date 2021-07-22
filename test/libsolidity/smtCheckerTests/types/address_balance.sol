pragma experimental SMTChecker;

contract C
{
	function f(address a, address b) public view {
		uint x = b.balance + 1000 atp;
		assert(a.balance > b.balance);
	}
}
// ----
// Warning 2072: (96-102): Unused local variable.
// Warning 4984: (105-125): CHC: Overflow (resulting value larger than 2**256 - 1) happens here.\nCounterexample:\n\na = 0\nb = 38\n\n\nTransaction trace:\nconstructor()\nf(0, 38)
// Warning 6328: (129-158): CHC: Assertion violation happens here.\nCounterexample:\n\na = 8855\nb = 7719\n\n\nTransaction trace:\nconstructor()\nf(8855, 7719)
