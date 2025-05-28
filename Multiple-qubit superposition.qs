import Microsoft.Quantum.Diagnostics.*;
import Microsoft.Quantum.Math.*;
import Microsoft.Quantum.Convert.*;
import Microsoft.Quantum.Arrays.*;

operation Main() : Result {
    use q = Qubit(3);
    DumpMachine();
    Message("Initialized Qubits: ");
}