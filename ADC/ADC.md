# ADC

## Guesstimates

- $\frac{3.9 kS}{s} · 256 ~ \text{oversamples} = \frac{1 MS}{s}$ → 500kHz max. unambiguous signal detection (Nyquist)
- $\frac{15.6 kS}{s} · 64 ~ \text{oversamples} = \frac{15.6 kS}{s}$ → 8kHz max. unambiguous signal detection (Nyquist)

## Sources

- ADC stuff in BGM data sheets: search for SFDR - Spurious-free dynamic range (same as max. frequency, but good search query keyword)
- 1MS/s as adc info (max. adc)
- oversample rates taken from Walther’s documentation, since result gets to 8kHz (what we use) this seems plausible

## Further Reading

- somewhere some old ADC tests by NL (which combinations work, which don't)
- shared ADC pin with SPI and other stuff

## Shared ADC SPI Pin

known since 2019 Spring, documented here 2021 Spring

- due to low pin count on BGM113 the PIN register is shared between ADC and SPI, as well as other functions
- on BGM12x other pins could be moved away, probably would alleviate ADC config issues
- Walther however dropped out 2020 before move to BGM12x
