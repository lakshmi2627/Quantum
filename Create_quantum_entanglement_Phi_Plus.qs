//Create Bell State Phi Plus

import Std.Diagnostics.DumpMachine;
import Microsoft.Quantum.Diagnostics.*;
operation Main() : (Result, Result) {
    Message("Qubits Initialized:");
    use (q1, q2) = (Qubit(), Qubit());
    DumpMachine();
    Message(" ");
    Message("Hadamard gate Operation applied on q1, to put it in superposition:");
    H(q1);
    DumpMachine();
    Message(" ");
    Message("entangling both qubits with CNOT:");
    CNOT(q1, q2);
    DumpMachine();
    Message(" ");
    Message("Measure the qubits using the M operation and store the results in m1 and m2:");
    let (m1, m2) = (M(q1), M(q2));
    DumpMachine();
    Reset(q1);
    Reset(q2);
    return (m1, m2);

}