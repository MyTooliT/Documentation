# Software

The text below describes some of the software for the ICOtronic system.

```{r, fig.align="center", out.width = "50%", echo=FALSE}
knitr::include_graphics("Pictures/ICOtronic Layers.svg", auto_pdf = TRUE)
```

[icoapi]: https://mytoolit.github.io/ICOapi/
[icoweb]: https://github.com/MyTooliT/ICOweb
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

## ICOc (Deprecated) {#overview-icoc}

- (Previous version of) [Python library to access CAN hardware](https://github.com/MyTooliT/ICOc)
- Provides script for measuring data and controlling the system: [`icoc`](https://mytoolit.github.io/ICOc/#basic-usage)
- Available on [PyPi](https://pypi.org/project/icoc/)
- **Deprecated**:
  - Not maintained anymore
  - Please use

    - [ICOtronic library](#overview-icotronic-library) for API access or
    - [ICOweb][] for measuring data and controlling the system

    instead

## ICOtest {#overview-icotest}

- [Hardware tests](https://github.com/MyTooliT/ICOtest) for ICOtronic devices
- Available on [PyPi](https://pypi.org/project/icotest/)

## ICOstate {#overview-icostate}

- [Python Library](https://ift-tuwien.github.io/ICOstate/) for stateful access to ICOtronic system
- Based on [ICOtronic library](#overview-icotronic-library)
- Available on [PyPi](https://pypi.org/project/icostate/)

## ICOapi {#overview-icoapi}

- Python [web backend][icoapi] based on [FastAPI](https://fastapi.tiangolo.com) and [ICOstate](#overview-icostate)
- Available on [PyPi](https://pypi.org/project/icoapi/)

## ICOweb {#overview-icoweb}

- [Web frontend][icoweb] (application) to control the ICOtronic system
- Based on [ICOapi](#overview-icoapi)

## ICOlyzer

- Scripts that uses measurement data stored by [ICOweb](#overview-icoweb), [ICOc](#overview-icoc), or [ICOn][icon] to analyze captured data
- Available on [PyPi](https://pypi.org/project/icolyzer/)
