# guesstimates

- 3.9kS/s \* 256 oversamples = 1MS/S --> 500kHz max. unambigous signal detection (nyquist)
- 15.6 kS/s \* 64 oversamples = 15.6kS/s --> 8kHz max. unambigous signal detection (nyquist)

# sources:

- ADC stuff in BGM datasheets: search for SFDR - spuriousFreeDynRange (same as max. freq, but good search query keyword)
- 1MS/s as adc info (max. adc)
- oversample rates taken from walther doc, since result gets to 8kHz (what we use) this seems plausible

# further reading

- somewhere some old ADC tests by NL (which combinations work, which don't)
- shared ADC pin with SPI and other stuff

# shared ADC SPI pin

known since 2019 Spring, documented here 2021 Spring

- dueto low pin count on BGM113 the PIN register is shared between ADC and SPI, as well as other functions
- on BGM12x other pins could be moved away, probably would alleviate ADC config issues
- Walther however dropped out 2020 before move to BGM12x
