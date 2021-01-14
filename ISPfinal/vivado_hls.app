<project xmlns="com.autoesl.autopilot.project" name="ISPfinal" top="ProxGS">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/ground_truth_R.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/ground_truth_G.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/ground_truth_B.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/DeconvolutionColorPrior/REAL3.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/DeconvolutionColorPrior/REAL2.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/DeconvolutionColorPrior/REAL.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/I_blurred_R.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/I_blurred_G.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/I_blurred_B.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/DeconvolutionColorPrior/IMAGINARY3.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/DeconvolutionColorPrior/IMAGINARY2.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/DeconvolutionColorPrior/IMAGINARY.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/DeconvolutionColorPrior/DENOM3.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/DeconvolutionColorPrior/DENOM2.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../tb_files/DeconvolutionColorPrior/DENOM.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="proximal.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="proximal.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fft_top.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fft_top.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="divergent.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="divergent.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="deblur.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="deblur.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

