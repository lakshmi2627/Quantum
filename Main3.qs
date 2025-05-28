import Std.Diagnostics.DumpMachine;
import Microsoft.Quantum.Diagnostics.*;
operation Main() : Result {
    use q = Qubit();
    Message("Initialized Qubit:");
    DumpMachine();
    Message(" ");
    H(q);
    Message("applied H:");
    DumpMachine();
    Message(" ");
    let randomBit = M(q);
    Message("applied Measurement:");
    DumpMachine();
    Message(" ");
    Reset(q);
    Message(" qubit reset:");
    DumpMachine();
    Message(" ");
    return randomBit;



}