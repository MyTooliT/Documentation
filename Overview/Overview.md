# Overview ICOtronic System

The text below describes the (lower levels) of the ICOtronic system.

- **ICOc**

  - Python package (library) for CAN access to sensor hardware
  - Based on [MyTooliT Communication protocol](http://github.com/MyTooliT/Protocol)
  - Available on [PyPi](https://pypi.org/project/icoc/)
  - Contains scripts for
    - testing (`test-sth`, `test-stu`, …)
      - Test environment for sensor hardware (STH, STU)
      - Tests if the hardware works correctly
    - measuring data and controlling the system (`icoc`, `icon`):
      - User interface for sensor hardware
      - Configures STH/STU attributes (e.g. name, sampling frequency)
      - Record data (e.g. acceleration values) in HDF5 format

- **ICOlyzer**

  - Scripts that uses measurement data stored by ICOc to analyze captured data
  - Available on [PyPi](https://pypi.org/project/icolyzer/)

```{r, fig.align="center", out.width = "75%", echo=FALSE}
knitr::include_graphics("Pictures/ICOtronic.svg", auto_pdf = TRUE)
```
