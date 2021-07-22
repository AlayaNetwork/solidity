pragma experimental SMTChecker;

contract C
{
	uint[] array;
	function f(uint x, uint p) public {
		require(x < 100);
		array[p] = 200;
		array[p] -= array[p] - x;
		assert(array[p] >= 0);
		assert(array[p] < 90);
	}
}
// ----
// Warning 6328: (191-212): CHC: Assertion violation happens here.\nCounterexample:\narray = []\nx = 91\np = 7719\n\n\nTransaction trace:\nconstructor()\nState: array = []\nf(91, 7719)
