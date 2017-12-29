
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% map virtual machine instructions to a list of integer codes

vminstrs_ints([])     --> [].
vminstrs_ints([I|Is]) -->
        vminstr_ints(I),
        vminstrs_ints(Is).


evminst_ints(stop)         --> [0].
evminst_ints(add)          --> [1].
evminst_ints(mul)          --> [2].
evminst_ints(sub)          --> [3].
evminst_ints(div)          --> [4].
evminst_ints(sdiv)         --> [5].
evminst_ints(mod)          --> [6].
evminst_ints(smod)         --> [7].
evminst_ints(addmod)       --> [8].
evminst_ints(mulmod)       --> [9].
evminst_ints(exp)          --> [10].
evminst_ints(signextend)   --> [11].
evminst_ints(lt)           --> [16].
evminst_ints(gt)           --> [17].
evminst_ints(slt)          --> [18].
evminst_ints(sgt)          --> [19].
evminst_ints(eq)           --> [20].
evminst_ints(iszero)       --> [21].
evminst_ints(and)          --> [22].
evminst_ints(evmor)        --> [23].
evminst_ints(xor)          --> [24].
evminst_ints(not)          --> [25].
evminst_ints(byte)         --> [26].
evminst_ints(sha3)         --> [32].
evminst_ints(address)      --> [48].
evminst_ints(balance)      --> [49].
evminst_ints(origin)       --> [50].
evminst_ints(caller)       --> [51].
evminst_ints(callvalue)    --> [52].
evminst_ints(calldataload) --> [53].
evminst_ints(calldatasize) --> [54].
evminst_ints(calldatacopy) --> [55].
evminst_ints(codesize)     --> [56].
evminst_ints(codecopy)     --> [57].
evminst_ints(gasprice)     --> [58].
evminst_ints(extcodesize)  --> [59].
evminst_ints(extcodecopy)  --> [60].
evminst_ints(blockhash)    --> [64].
evminst_ints(coinbase)     --> [65].
evminst_ints(timestamp)    --> [66].
evminst_ints(number)       --> [67].
evminst_ints(difficulty)   --> [68].
evminst_ints(gaslimit)     --> [69].
evminst_ints(pop)          --> [80].
evminst_ints(mload)        --> [81].
evminst_ints(mstore)       --> [82].
evminst_ints(mstore8)      --> [83].
evminst_ints(sload)        --> [84].
evminst_ints(sstore)       --> [85].
evminst_ints(jump)         --> [86].
evminst_ints(jumpi)        --> [87].
evminst_ints(pc)           --> [88].
evminst_ints(msize)        --> [89].
evminst_ints(gas)          --> [90].
evminst_ints(jumpdest)     --> [91].
evminst_ints(create)       --> [240].
evminst_ints(call)         --> [241].
evminst_ints(callcode)     --> [242].
evminst_ints(return)       --> [243].
evminst_ints(delegatecall) --> [244].
evminst_ints(selfdestruct) --> [255].