# A Sample User Subroutine for Using Modern Fortran with Abaqus

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

__A simple Abaqus user subroutine demonstrating the use of modern Fortran features:__

- [__Free form__](https://bristolcompositesinstitute.github.io/RSE-Guide/abaqus-user-subroutines/free-form-fortran-abaqus.html) formatting using compiler directives for improved readability and ease-of-use. 

- [__Fortran modules__](https://bristolcompositesinstitute.github.io/RSE-Guide/abaqus-user-subroutines/using-fortran-modules.html) for code organisation, modularisation and modern procedure interfaces

- [__Explicit typing__](https://bristolcompositesinstitute.github.io/RSE-Guide/abaqus-user-subroutines/explicit-typing-abaqus.html) to enforce type-safety and avoid implicit typing errors

__This sample code follows the [BCI Fortran Coding Guidelines](https://bristolcompositesinstitute.github.io/RSE-Guide/abaqus-user-subroutines/fortran-style-guidelines.html)__


## Contents

- `src/umat.f` - *top-level user subroutine to pass to abaqus*
- `src/Elastic_mod.f90` - *Module containing the main functionality of the user subroutine to reproduce linear elastic behaviour*
- `jobs/single-element.inp` *a single-element job file to test the umat*
- `abaci.toml` - *configuration file for use with the abaci test runner tool*
