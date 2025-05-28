import QasmStd.Convert.ResultArrayAsIntBE;
import Std.Math.BitSizeI;
import Microsoft.Quantum.Math.*;
import Microsoft.Quantum.Convert.*;
operation Main() : Int {
    let min = 53;
    Message($"Sample random number between {min} and Int : ");
    return GenerateRandomNumberInRange(min);

}
operation GenerateRandomNumberInRange(min : Int) : Int{
    mutable bits = [];
    let nbit = BitSizeI(min);
    for idxbit in 1..nbit {
        set bits += [GenerateRandombit()];

    }
    let sample = ResultArrayAsInt(bits);
    return sample<min ? GenerateRandomNumberInRange(min) | sample;

}
operation GenerateRandombit() : Result{
    use q = Qubit();
    H(q);
    let Result = M(q);
    Reset(q);
    return Result;
}