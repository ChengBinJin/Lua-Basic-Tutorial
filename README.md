# Lua-Basic-Tutorial
This tutorial follows John Sonmez [Youtube tutorial](https://www.youtube.com/watch?v=jwn1Vkez7og&list=PLysdvSvCcUhZ3d2AEF4XVAdAyQSBxLNRT&index=1) for basics of Lua.
  
## What is the Lua?
**Lua** is a lightweight, high-level, multi-paradigm programming language designed primarily for embedded use in applications. Lua is cross-platform, since the interpreter of compiled bytecode is writtten in ANSI C, and Lua has a relatively simple C API to embed it into applications.  
  
Lua was originally designed in 1993 as a language for extending software applicationss to meet the increasing demand for customization at the time. It provided the basic facilities of most procedural programming languages, but more complicated or domain-specific features were not included; rather, it included mechanisms for extending the language, allowing programmers to implement such features. As Lua was intended to be a general embeddable extension language, the designers of Lua focused on improving its speed, portability, extensibility, and ease-of-use in development. (from wikipedia)  

## Types - 8 basic types
- nil
- boolean
- number
- string
- userdata
- function
- thread
- table  
  
## Operators
- __Arthmetic (+, -, *, /, ^, %)__  
- **Relational (<, >, <=, >=, ==, ~=)**
  - Note: not equal ~= in Lua  
- __Logical (and, not, or)__
- **Other**
  - Concatenation
    - "Hi" .."there"
  - Length
    - #suckers  
  
## If, Then, Else
**if** boolean expresion __then__  
&nbsp; &nbsp; &nbsp; &nbsp; -- do something  
**else**  
&nbsp; &nbsp; &nbsp; &nbsp; -- do something else  
__end__  
  
## Loops
- **While - while** boolean expression __do__ something **end**  
- **Repeat - repeat** something __until__ boolean expression  
- **For (Numberic) - for** variable = start, end, step __do__ something **end**  
- **For (Generic) - for** k, v in iterator __do__ something **end**  
  
## Blocks and Scope
*By default, all variables in Lua are globally scoped*  
  
## Variadic Functions
**function countStringLengths(...)**  
&nbsp; &nbsp; &nbsp; &nbsp; --do stuff  
&nbsp; &nbsp; &nbsp; &nbsp; a, b, c = ...  
**end**  
  
## Tables
**Ex. (1):** grades = {1, 2, 3}  
**Ex. (2):** grades = {"John" = 89, "Steam" = 90}  
**Note:** the index of tables in Lua starts from 1 not 0  
  
## Metamethods
- **__index**  
- **__newindex**  
- **Operators**  
  - __add  
  - __sub  
  - __mul  
  - ...  
- **__call**  
- **__tostring**
  
## Overview of Standard Libraries  
- Basic  
- Package  
- String  
- Table  
- I/O  
- Operating System  
- Debug  
