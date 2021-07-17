contract C
{
    address a;
    bool b;
    uint c;
    function f(uint x) public {
        if (x == 0)
        {
            a = 'atp1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgqwalt0t';
            b = true;
        }
        else
        {
            a = 'atp1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqsqtk663f';
            b = false;
        }
        assert(a > 'atp1qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqdruy9j' && b);
    }
}
// ====
// SMTEngine: all
// ----
// Warning 6328: (330-389): CHC: Assertion violation happens here.\nCounterexample:\na = 512, b = false, c = 0\nx = 1\n\nTransaction trace:\nC.constructor()\nState: a = 0, b = false, c = 0\nC.f(1)
