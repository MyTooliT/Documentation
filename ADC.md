
3.9kS/s * 256 oversamples = 1MS/S --> 500kHz max. unambigous signal detection (nyquist)
15.6 kS/s * 64 oversamples = 15.6kS/s --> 8kHz max. unambigous signal detection (nyquist)

# sources:
- ADC stuff in BGM datasheets: search for SFDR - spuriousFreeDynRange (same as max. freq, but good search query keyword)
- 1MS/s as adc info (max. adc)
- oversample rates taken from walther doc, since result gets to 8kHz (what we use) this seems plausible
