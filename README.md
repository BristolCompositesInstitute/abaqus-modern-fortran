# A Sample User Subroutine for Using Modern Fortran with Abaqus

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

__A simple Abaqus user subroutine demonstrating the use of modern Fortran features:__

- [__Free form__](https://bristolcompositesinstitute.github.io/RSE-Guide/abaqus-user-subroutines/free-form-fortran-abaqus.html) formatting using compiler directives for improved readability and ease-of-use. 

- [__Fortran modules__](https://bristolcompositesinstitute.github.io/RSE-Guide/abaqus-user-subroutines/using-fortran-modules.html) for code organisation, modularisation and modern procedure interfaces

- [__Explicit typing__](https://bristolcompositesinstitute.github.io/RSE-Guide/abaqus-user-subroutines/explicit-typing-abaqus.html) to enforce type-safety and avoid implicit typing errors

__This sample code follows the [BCI Fortran Coding Guidelines](https://bristolcompositesinstitute.github.io/RSE-Guide/abaqus-user-subroutines/fortran-style-guidelines.html).__


## Contents

- `src/umat.f` - *top-level user subroutine to pass to abaqus*
- `src/Elastic_mod.f90` - *Module containing the main functionality of the user subroutine to reproduce linear elastic behaviour*
- `src/Abaqus_Definitions.f90` - *Module for determining the real precision used by Abaqus (Important for Abaqus/Explicit) and storing Abaqus constants*
- `jobs/single-element.inp` *a single-element job file to test the umat*
- `abaci.toml` - *configuration file for use with the Abaci test runner tool*


__Abaqus/Explicit:__ the example in this repository is a `umat` for use with Abaqus/Standard, however the same techniques can be used with Abaqus/Explicit also. You will need to comment line 21 and uncomment line 22 in [`src/Abaqus_Definitions.f90`](src/Abaqus_Definitions.f90) to use it with a `vumat` in Abaqus/Explicit.


## Running the Example

You will need Abaqus and the Intel Fortran compiler installed on your system to run this example.

1. Open a command window and navigate to the job subfolder within this repository

2. Run the following command:

```shell
abaqus job=single-element user=../src/umat.f interactive
```

If you have the [Abaci](https://github.com/BristolCompositesInstitute/abaci) test runner installed,
then simply navigate to the root of this repository and run the following command:

```shell
abaci run
```
