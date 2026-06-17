# Overview ICOtronic System

The text below describes the (lower software levels) of the ICOtronic system.

```{r, fig.align="center", out.width = "50%", echo=FALSE}
knitr::include_graphics("Pictures/ICOtronic Layers.svg", auto_pdf = TRUE)
```

[ICOweb]: https://github.com/MyTooliT/ICOweb
[icon]: https://mytoolit.github.io/ICOtronic/tutorials.html#icon-cli-tool

## ICOtronic Library {#overview-icotronic-library}

- [Python package](https://github.com/MyTooliT/ICOtronic) for CAN access to sensor hardware
- Based on [MyTooliT Communication protocol](http://github.com/MyTooliT/Protocol)
- Available on [PyPi](https://pypi.org/project/icotronic/)
- Provides [API](https://mytoolit.github.io/ICOtronic/api.html) to use various parts of the ICOtronic hardware
- Contains scripts for measuring data and controlling the system: [`icon`][icon]
  - User interface for sensor hardware
  - Configures STH/STU attributes (e.g. name, sampling frequency)
  - Record data (e.g. acceleration values) in HDF5 format
  - Better alternative: [ICOweb][]

## ICOc

- Previous version of [Python library to access CAN hardware](https://github.com/MyTooliT/ICOc)
- Provides script for measuring data and controlling the system: [`icoc`](https://mytoolit.github.io/ICOc/#basic-usage)
- **Deprecated**:
  - Not maintained anymore
  - Use [ICOtronic library](#overview-icotronic-library) or [ICOweb][] instead

## ICOlyzer

- Scripts that uses measurement data stored by [ICOweb](https://github.com/MyTooliT/ICOweb), [ICOc](https://github.com/MyTooliT/ICOc), or [ICOn][icon] to analyze captured data
- Available on [PyPi](https://pypi.org/project/icolyzer/)
