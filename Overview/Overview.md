# Overview ICOtronic System

The text below describes how the (lower levels) of the ICOtronic system _should work_. Currently the system works similarly, but

- the communication interface (ICOconnect),
- the tests (ICOtest), and
- the user interface (ICOc)

are all part of a [single monolithic code base](https://github.com/MyTooliT/ICOc).

- **ICOconnect**

  - Python package for CAN access to sensor hardware
  - Based on [MyTooliT Communication protocol](http://github.com/MyTooliT/Protocol)
  - Ideally available online (via [PyPi](https://pypi.org))
    (requires opening up the code)

- **ICOc**

  - Uses ICOconnect to communicate with sensor hardware
  - User interface for sensor hardware
  - Configures STH/STU attributes (e.g. name, sampling frequency)
  - Records data (e.g. acceleration values) as log files

- **ICOtest**

  - Uses ICOconnect to communicate with sensor hardware
  - Test environment for sensor hardware (STH, STU)
  - Tests if the hardware works correctly

- **ICOtools**

  - Scripts that use data stored by ICOc to analyze captured data

```{r ext-graphics, out.width = "80%", echo=FALSE}
knitr::include_graphics("Pictures/ICOtronic.svg", auto_pdf = TRUE)
```
