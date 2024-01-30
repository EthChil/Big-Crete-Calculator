import matplotlib.pyplot as plt
import numpy as np

def read_bode_data(filename):
    frequencies = []
    magnitudes = []
    phases = []

    with open(filename, 'r') as file:
        next(file)
        for line in file:
            parts = line.split()
            freq = float(parts[0])
            mag, phase = parts[1].strip('()').split(',')
            mag = float(mag[:-2])  # Remove 'dB' and convert to float
            phase = float(phase[:-1])  # Remove '°' and convert to float
            
            frequencies.append(freq)
            magnitudes.append(mag)
            phases.append(phase)

    return np.array(frequencies), np.array(magnitudes), np.array(phases)

# Plotting
plt.figure(figsize=(12, 8))

# Magnitude plot
plt.subplot(2, 1, 1)
plt.title('Bode Plot - Magnitude')
plt.xlabel('Frequency (Hz)')
plt.ylabel('Magnitude (dB)')

# Phase plot
plt.subplot(2, 1, 2)
plt.title('Bode Plot - Phase')
plt.xlabel('Frequency (Hz)')
plt.ylabel('Phase (°)')

files = ["5C", "6a", "6e1", "6e2", "6e3"]

# Read and plot data for each file
for i in range(0, 5):
    filename = files[i] + ".txt"
    freq, mag, phase = read_bode_data(filename)
    plt.subplot(2, 1, 1)
    plt.semilogx(freq, mag, label=files[i])
    plt.subplot(2, 1, 2)
    plt.semilogx(freq, phase, label=files[i])

# Show legend
plt.subplot(2, 1, 1)
plt.legend()
plt.subplot(2, 1, 2)
plt.legend()

plt.tight_layout()
plt.show()
