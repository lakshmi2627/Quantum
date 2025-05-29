import Microsoft.Quantum.Diagnostics.*;
import Microsoft.Quantum.Math.*;

operation main() : (Result, Result) {
    Message("Initializing Qubit:");
    use (q1, q2) = (Qubit(), Qubit());
    DumpMachine();
    Message("Applying Hadamard:")
    H(q1);
    DumpMachine();
    Message("Applying Pauli-Z gate:");
    Z(q1);
    DumpMachine();
    Message("Applying CNOT on target qubit:");
    CNOT(q1, q2);
    DumpMachine();
    Message("Applying M to measure:");
    let (m1, m2) = (M(q1), M(q2));
    DumpMachine();
    Reset(q1);
    Reset(q2);
    return (m1, m2);
    
}