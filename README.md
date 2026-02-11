# Assignment8

![Assignment 8](https://github.com/PGE383-HPC/assignment8/actions/workflows/main.yml/badge.svg)

The purpose of this assignment is to get familiar with the structure of a Julia
Project, implement a few functions, and run the tests.  

In the `src` directory of the repository you will find a file called
`assignment8.jl`.  Edit that file to complete the following tasks:

1.  Implement the function `add_positional_arguments()` so that it accepts
    three positional arguments and returns the sum of those arguments.  The 
    third positional argument should have a default value of `2`.  For example,
    calling the function with

    ```julia
    add_positional_arguments(1, 2, 3)  
    ```  

    should return `6`.

    Calling the function with 

    ```julia
    add_positional_arguments(1, 2)
    ```  

    should return `5`.

1. Next create a unicode shorthand function name for 
   `add_positional_arguments`.  Use the symbol Σ to create a function that has
   idential behavior, i.e. 

    ```julia
    Σ(1, 2, 3)
    ```  

    should return `6`.

    Calling the function with 

    ```julia
    Σ(1, 2)
    ```  

    should return `5`.

1.  Implement the function `add_keyword_arguments()` so that it accepts
    three keyword arguments and returns the sum of those arguments.  The keyword 
    argument names should be `a`, `b`, and `c` and they should have default 
    values of `1`, `2`, and `3`, respectively. For example, calling the function with

    ```julia
    add_keyword_arguments(a=1, b=2, c=3)
    ```  

    should return `6`.

    Calling the function with 

    ```julia
    add_positional_arguments(a=1, b=2)
    ```  

    should return `6`.

1. Implement the function `return_anonymous_function()` to return a function that
   implements the equation

   <img src="https://latex.codecogs.com/svg.image?\bg_white&space;1&plus;x^2" title="\bg_white 1+x^2" />

   this should just be a one-line implementation that uses an anonymous
   function.  Running the following commands

   ```julia
   f = return_anonymous_function()
   f(2)
   ```

   should return `5`. And  

   ```julia
   f = return_anonymous_function()
   f(3)
   ```  

   should return `10`.

## Testing

To see if you answers are correct, run the following command at the Terminal
command line from the repository's root directory

```bash
julia --project=. -e "using Pkg; Pkg.test()"
```

the tests will run and report if passing or failing.
