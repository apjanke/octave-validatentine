Validatinator for GNU Octave
============================

Validation functions for GNU Octave.

In Matlab R2017a, Matlab introduced [Validation Functions](https://www.mathworks.com/help/matlab/matlab_oop/property-validator-functions.html) that allow you concisely express constraints for the types and values of variable and property values.
Octave doesn’t have those yet.
This project provides implementations of them, both some Matlab-compatible ones, and some Octave-specific extensions.

## Installation and usage

Validatinator is a standard Octave `pkg` package. Install it using `pkg`.

To install the latest Validatinator for usage or testing:

```
pkg install https://github.com/apjanke/octave-validatinator/archive/master.zip`
pkg load validatinator
```

To hack on Validatinator itself, clone the repo and add its `inst/` dir to your Octave path:

```
git clone https://github.com/apjanke/octave-validatinator
```

```
addpath /path/to/my/cloned/octave-validatinator/inst
```

## Functions

Validatinator provides the following functions:

Matlab compatibility functions (in `Mcode/compat`):
  * mustBeFinite(x)
  * mustBeInteger(x)
  * mustBeMember(x, valid)
  * mustBeNonempty(x)
  * mustBeNumeric(x)
  * mustBeReal(x)

New functions (in `Mcode/extend`):
  * makeItBeA(x, type)
  * mustBeA(x, type)
  * mustBeCellstr(x)
  * mustBeCharvec(x)
  * mustBeSameSize(a, b)
  * mustBeScalar(x)
  * mustBeScalarLogical(x)
  * mustBeVector(x)
  * size2str(sz)

None of these functions actually do much work, but they are a concise, standardized way of expressing constraints on function input arguments, object properties, and other invariants.
Sprinkle calls to them throughout your code.

## Project

The home page for Validatinator for Octave is the [Validatinator GitHub repo](https://github.com/apjanke/octave-validatinator).

For support, feel free to post a bug report or question on the [Validatinator GitHub issue tracker](https://github.com/apjanke/octave-validatinator/issues).

The project author is [Andrew Janke](https://apjanke.net).
