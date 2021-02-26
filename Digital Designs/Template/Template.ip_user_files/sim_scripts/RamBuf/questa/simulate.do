onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RamBuf_opt

do {wave.do}

view wave
view structure
view signals

do {RamBuf.udo}

run -all

quit -force
