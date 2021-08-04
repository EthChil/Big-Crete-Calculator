onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RamInterface_opt

do {wave.do}

view wave
view structure
view signals

do {RamInterface.udo}

run -all

quit -force
