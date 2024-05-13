<project xmlns="com.autoesl.autopilot.project" name="c_cnn" top="top_net">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../main_load.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="c_cnn/conv_core.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="c_cnn/load.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="c_cnn/pool_core.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="c_cnn/top.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="c_cnn/utils.h" sc="0" tb="false" cflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

