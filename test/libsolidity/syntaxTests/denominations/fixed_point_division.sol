contract C {
	uint constant a = 4 atp / 3 hours;
	ufixed constant b = ufixed(4 atp / 3 hours);
}
// ----
// TypeError: (32-47): Type rational_const 10000000000000000 / 27 is not implicitly convertible to expected type uint256. Try converting to type ufixed256x62 or use an explicit conversion.
