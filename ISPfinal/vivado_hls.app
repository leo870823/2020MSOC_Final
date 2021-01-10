<project xmlns="com.autoesl.autopilot.project" name="ISPfinal" top="cross_channel_deblur">
    <files>
        <file name="deblur.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="deblur.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="divergent.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="divergent.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="fft_top.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="fft_top.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="proximal.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="proximal.h" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="../../tb_files/DENOM.txt" sc="0" tb="1" cflags=""/>
        <file name="../../tb_files/IMAGINARY.txt" sc="0" tb="1" cflags=""/>
        <file name="../../tb_files/I_blurred_B.txt" sc="0" tb="1" cflags=""/>
        <file name="../../tb_files/I_blurred_G.txt" sc="0" tb="1" cflags=""/>
        <file name="../../tb_files/I_blurred_R.txt" sc="0" tb="1" cflags=""/>
        <file name="../../tb_files/REAL.txt" sc="0" tb="1" cflags=""/>
        <file name="../../tb_files/ground_truth_B.txt" sc="0" tb="1" cflags=""/>
        <file name="../../tb_files/ground_truth_G.txt" sc="0" tb="1" cflags=""/>
        <file name="../../tb_files/ground_truth_R.txt" sc="0" tb="1" cflags=""/>
        <file name="../../tb.cpp" sc="0" tb="1" cflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" optimizeCompile="true" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

