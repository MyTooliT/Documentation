# Data Analysis

## Tools

The list below describes some of the tools you can use to work with the `.hdf` files created by [ICOc](https://github.com/mytoolit/ICOc/).

### General

- [HDFView](https://www.hdfgroup.org/downloads/hdfview/): Tool to open and view HDF files. For more information on how to work with the files created by ICO in HDFView please [take a look at the documentation of ICOc](https://mytoolit.github.io/ICOc/#measurement-data).
- [`h5dump`](https://www.hdfgroup.org/downloads/hdf5): CLI tool to view HDF5 data; Part of HDF5 library download

### Specific

- [ICOlyzer](https://github.com/MyTooliT/ICOlyzer): Tools to analyze measurement data from the ICOtronic system
- [ICOweb](https://github.com/MyTooliT/ICOweb): Can be used to visualize HDF5 files produced by itself or one of the other software tools

## Timestamps

The **embedded devices** of the ICOtronic system (STH, STU, SMH) only have knowledge of **relative time**, i.e. they can tell you about the time difference between two timepoints, but they do not know “which time it is”. They simply do not have access to a time source for absolute time, such as a time server or an atomic clock.

In the case of [ICOc](https://github.com/mytoolit/ICOc/) the **measurement computer** adds the information about the **absolute time** a measurement takes place. This means that the timestamps in the measurement files are dependent on the time settings of the computer. Since the timing information is taken from the **timestamp of a CAN message** multiple data points have the same timestamp. The 8 data bytes of a [CAN streaming data message](https://mytoolit.github.io/Documentation/#command:data) will contain **three 16 bit measurement values**, which all **share the same timestamp**.
