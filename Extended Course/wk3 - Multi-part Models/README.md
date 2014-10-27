# Multi-Part Models

## Concepts to cover

* Vitamins, printed-parts and assemblies
* Project structure
* Conventions for vitamins
* Parameterisation of vitamins (enum types)
* Conventions for printed-parts
* Conventions for assemblies
* BOM generation (headlines only)
* Connector concept
* Using attach()
* Representing assembly sequences with step()
* Connector getter functions

## Vitamins, Printed-parts and Assemblies

Models of complete machines are comprised of two fundamental building blocks - parts and assemblies:
* Parts - represent the individual, physical bits of the machine
* Assemblies -  represent how the parts should be put together

Assemblies are typically arranged in a tree structure, with a top-level assembly containing a combination of parts and sub-assemblies.

Because OpenSCAD is primarily used for creating 3D-printable designs, we adopt the convention of classifing our parts into two types:
* Printable parts - STL
* Non-printable parts - Vitamins

These different types of parts are also treated differently by the various automation tools, summarised in the following table:

| Automation Tool | STL  | Vitamin |
| --------------- | ---- | ------- |
| BOM Generator   | Placed in the printed parts list | Placed in the vitamins list |
| Thumbnail view  | Placed in the /images dir | Place in the vitamins/views directory, one image per vitamin variant(type) |
| STL Generator   | Placed in the /stl dir ready for printing | Placed in the vitamins/stl directory and used to accelerate on-screen rendering, one STL per vitamin sub-part per variant (type) |
| AssemblyGuide   | Auto-linked to a 3D viewer | not linked |

## Project Structure

The following list illustrates the key parts of the project structure that hold the definitions of parts and assemblies:

* Root directory
 * Should contain a top-level .scad file that includes the global config file and instantiates the top-level assembly
 * Top-level filename should match the project name
 * May optionally contain other top-level scenes (e.g. the machine placed in various environments)
* /assemblies
 * One .scad file per assembly
 * The filename should match the assembly module name exactly
 * The top-level assembly name should match the project name
 * Each assembly file should contain definitions of any associated printed parts (_STL suffix)
* / vitamins
 * One .scad file per vitamin
 * Each file should contain a single vitamin
 * The filename should match the vitamin module name exactly
* /config
 * Contains the global configuration files for the project

## Conventions for Vitamins


