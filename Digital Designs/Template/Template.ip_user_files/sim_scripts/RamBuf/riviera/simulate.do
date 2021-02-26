onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+RamBuf -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RamBuf xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RamBuf.udo}

run -all

endsim

quit -force
