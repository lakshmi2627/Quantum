import Std.Math.Min;
import QasmStd.Intrinsic.gphase;
import QasmStd.Convert.ResultArrayAsIntBE;
import Std.Math.BitSizeI;
import Microsoft.Quantum.Math.*;
import Microsoft.Quantum.Convert.*;

operation Main() : Int {
    let min = 13;
    let max = 100;
    Message($"sampling a random number between {min} and {max}: ");
    return GenerateRandomNumberInRange(max);
}

operation GenerateRandomNumberInRange(max : Int) : Int {
    mutable bits = [];
    let nbit = BitSizeI(min)
    let nbit = BitSizeI(max);
    for idxbit in 1..nbit {
        set bits += [GenerateRandombit()];
    }
    let sample = ResultArrayAsInt(bits);
    return sample>max ? GenerateRandomNumberInRange(max) | sample;
}


operation GenerateRandombit() : Result {
    use q = Qubit();
    H(q);
    let Result = M(q);
    Reset(q);
    return Result;
}