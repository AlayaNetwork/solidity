contract ClientReceipt {
    constructor() payable {}
}
// ====
// compileViaYul: also
// ----
// constructor(), 1000 von ->
// balance -> 1000
