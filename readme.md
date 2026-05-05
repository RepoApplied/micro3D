# micro3D: Custom 3D-Printed Microscope for TIE Phase Retrieval

This repository contains the 3D-printable components and design files for a custom-built microscope optimized for **Transport of Intensity Equation (TIE)** phase retrieval. The design focuses on a direct ETL (Electrically Tunable Lens) configuration to minimize optical complexity and instrument footprint.

## Overview

The microscope is designed to enable axial displacement of the focal plane through an integrated ETL. This allows for the rapid acquisition of multifocal image stacks at different defocus distances without mechanical movement of the sample, which is essential for quantitative phase imaging.

### Key Features:
* **Direct ETL Configuration:** Simplified optical path to minimize aberrations.
* **Reduced Footprint:** Incorporation of two first-surface mirrors to fold the optical path and minimize the instrument's volume.
* **Phase Stability:** Validated setup that eliminates spurious quadratic phase terms during lateral sample translation.
* **Modular Design:** 3D-printed parts for easy customization and repair.

---

## System Visualization

![Microscope 3D Render](micro_3d_render.png)
*Figure 1: 3D render of the microscope components and optical layout.*

---


## References

If you use this design or research in your work, please cite the following publications:

* **Silva, A., Arocena, M., Hochmann, J., Fernández, A., & Alonso, J. R. (2025).** Quantitative phase microscopy for time-lapse hypoxia-induced cellular assays based on the transport of intensity equation. *Applied Optics*, 64(5), 1186-1195.

* **Silva, A., & Alonso, J. R. (2022, August).** Open source electronic platforms and 3d printing for microscopy: a cost-effective approach. In *Latin America Optics and Photonics Conference* (pp. M2C-2). Optica Publishing Group.
---

## Contents
* `/stl`: Standard Tessellation Language files for 3D printing.
* `/scad`: Original OpenSCAD or CAD source files for modifications.

---

## Requirements
* **3D Printer:** FDM or SLA (FDM recommended for structural parts).
* **Material:** PLA, PETG, or ABS.
* **Hardware:** Two first-surface mirrors, Electrically Tunable Lens (ETL), and standard optical cage components.