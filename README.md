# JuliaOpenCVBindingTest
This branch has some progress on automated generation. Please look at gen3.py which can generate bits of relevant C++ code

### TODO
 - Support Algorithm inherited classes
 - Ensure correct argument conversion (Vectors, Mats, ...)
 - Generate final namespace C++ code
 - Julia side code

### DONE
 - Constants and enums
 - Most functions
 - Most classes and classmethods that aren't inherited from Algorithm
 - Getters and Setters
 - Data retrieval form hdr_parser


To run, first modify hdr_parser.py with appropriate header file names. Then use

```python3 gen3.py```

The script will crash but it will print relevant output regarding generated function code before exiting.