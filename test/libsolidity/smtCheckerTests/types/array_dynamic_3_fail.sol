pragma experimental SMTChecker;

contract C
{
	uint[][][] array;
	function f(uint x, uint y, uint z, uint t, uint w, uint v) public view {
		// TODO change to = 200 when 3d assignments are supported.
		require(array[x][y][z] < 200);
		require(x == t && y == w && z == v);
		assert(array[t][w][v] > 300);
	}
}
// ----
// Warning 6328: (274-302): CHC: Assertion violation happens here.\nCounterexample:\narray = []\nx = 1236\ny = 38\nz = 7719\nt = 1236\nw = 38\nv = 7719\n\n\nTransaction trace:\nconstructor()\nState: array = []\nf(1236, 38, 7719, 1236, 38, 7719)
