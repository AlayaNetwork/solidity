contract ClientReceipt {
    constructor() payable {}
}
// ====
// compileViaYul: also
// ----
// constructor(), 1 atp ->
// balance -> 1000000000000000000
