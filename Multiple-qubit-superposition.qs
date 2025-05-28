import Std.Convert.BoolArrayAsResultArray;
import Std.Convert.BoolArrayAsInt;
import Std.Arrays.ForEach;
import Std.Diagnostics.DumpMachine;
import Microsoft.Quantum.Diagnostics.*;
import Microsoft.Quantum.Math.*;
import Microsoft.Quantum.Convert.*;
import Microsoft.Quantum.Arrays.*;

operation Main() : Int {
    Message("Initialized Qubits: ");
    use qubits = Qubit[3];
    DumpMachine();
    Message("Qubit in uniform superposition: ");
    ApplyToEach(H , qubits);
    
    DumpMachine();
    Message("mesured Qubits: ");
    mutable Results = [];
    for q in qubits {
        set Results += [M(q)];
        DumpMachine();
        
        
    }
    
    
    Message("Qubit resetted: ");
    ResetAll(qubits);
    
    DumpMachine();
    return BoolArrayAsInt(ResultArrayAsBoolArray(Results));


}