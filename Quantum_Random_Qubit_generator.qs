//Generate a Quantum Random Bit

import Std.Diagnostics.DumpMachine;
import Microsoft.Quantum.Diagnostics.*;
import Microsoft.Quantum. Math.*;

operation Main() : Result{
    use q = Qubit();
    Message("Applying Hadamard operation on Qubit to change the state into equal superposition of |0> & |1>: ");
    H(q);
    DumpMachine();
    Message("use the M operation to measure the qubit value, and store the measurement value in the result variable:");
    let result = M(q);
    DumpMachine();
    Message("Resetting the Qubit:");
    Reset(q);
    DumpMachine();
    return result;

}