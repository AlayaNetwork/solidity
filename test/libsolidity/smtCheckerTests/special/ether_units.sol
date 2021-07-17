contract D {
	function f() public pure {
		assert(1000000000000000000 von == 1 atp);
		assert(100000000000000000 von == 1 atp);
		assert(1000000000 von == 1 gvon);
		assert(100000000 von == 1 gvon);
		assert(1000000000 gvon == 1 atp);
		assert(100000000 gvon == 1 atp);
	}
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (87-126): CHC: Assertion violation happens here.\nCounterexample:\n\n\nTransaction trace:\nD.constructor()\nD.f()
// Warning 6328: (166-197): CHC: Assertion violation happens here.\nCounterexample:\n\n\nTransaction trace:\nD.constructor()\nD.f()
// Warning 6328: (237-268): CHC: Assertion violation happens here.\nCounterexample:\n\n\nTransaction trace:\nD.constructor()\nD.f()
