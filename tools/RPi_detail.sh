#!/bin/bash
echo "core `vcgencmd measure_volts core`"
echo "sdram_c `vcgencmd measure_volts sdram_c`"
echo "sdram_p `vcgencmd measure_volts sdram_p`"
echo "cpu `vcgencmd measure_temp`"
