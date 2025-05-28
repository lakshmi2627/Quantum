import Std.Diagnostics.DumpMachine;
import Std.Math.Sqrt;
import Std.Math.ArcCos;
import Std.ResourceEstimation.AccountForEstimates;
import Microsoft.Quantum.Diagnostics.*;
import Microsoft.Quantum.Math.*;

operation Main() : Result {
    use q = Qubit();
    let P = 0.80;
    DumpMachine();
    Message(" ");
    Ry(2.0 * ArcCos(Sqrt(P)), q);
    Message("qubit in desired state");
    Message(" ");
    DumpMachine();
    Message(" ");
    Message("skewed random bit is : ");
    let skewedrandombit = M(q);
    Reset(q);
    return skewedrandombit;
}