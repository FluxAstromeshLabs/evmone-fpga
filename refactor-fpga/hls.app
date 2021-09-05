<project xmlns="com.autoesl.autopilot.project" name="refactor-fpga" top="execute_contract_fpga">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow askAgain="false" name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../tests/test-erc20.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tests/utils.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tests/utils.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="analysis.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="analysis.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="basic_string.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="evmc/evmc.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="evmc/evmc.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="execution_state.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="executor_fpga.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="executor_fpga.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="evmc/helpers.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="instruction_traits.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="instructions.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="evmc/instructions.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="instructions.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="intx/int128.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="intx/intx.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="keccak256.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="keccak256.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="refactor" status="active"/>
    </solutions>
</project>

