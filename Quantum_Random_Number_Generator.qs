//This code generates Quantum random number between 0 and max number given

import Std.Math.Min;
import QasmStd.Intrinsic.gphase;
import QasmStd.Convert.ResultArrayAsIntBE;
import Std.Math.BitSizeI;
import Microsoft.Quantum.Math.*;
import Microsoft.Quantum.Convert.*;

operation Main() : Int {
    let max = 100;
    Message($"sampling a random number between 0 and {max}: ");
    return GenerateRandomNumberInRange(max);
}

operation GenerateRandomNumberInRange(max : Int) : Int {
    mutable bits = [];
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