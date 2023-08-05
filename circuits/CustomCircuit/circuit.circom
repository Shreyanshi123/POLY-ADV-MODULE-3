pragma circom 2.0.0;

template CustomCircuit () {
    // signal inputs
    signal input a;
    signal input b;

    // signal from gates
    signal x;
    signal y;

    // signal output 
    signal output q;

    // component used to create Custom Circuit
    component andGate = AND();
    component notGate = NOT();
    component orGate = OR();

    // Circuit Logic
    // AND Gate (Same connection)
    andGate.a <== a;
    andGate.b <== b;
    x <== andGate.out;

    // NOT Gate (Same connection)
    notGate.in <== b;
    y <== notGate.out;

    // OR Gate (Same connection)
    orGate.a <== x;
    orGate.b <== y;
    q <== orGate.out;
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    // AND gate logic
    out <== a*b;
}

template NOT() {
    signal input in;
    signal output out;

    // NOT gate logic
    out <== 1 - in;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    // OR gate logic
    out <== a + b - a * b;
}

component main = CustomCircuit();
