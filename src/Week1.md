---
marp: true
theme: pitt
paginate: true
header: University of Pittsburgh
footer: © 2023 Shinwoo Kim
---

<!-- _class: title -->

# Lab0: Hello Lab
## Getting up to speed with Thoth

CS 0449: Introduction to Systems Software
Week 1, Jan. 13, 2023
Section XXXX - Fri 3 PM

**Shinwoo Kim**

Department of Computer Science
School of Computing & Information
University of Pittsburgh

---

# Are you in the right place?
* This is Recitation for **CS 0441: Discrete Structures for Computer Science**.
  * Lecture **Section 1090**
  * with **Professor Bonidie**
  * which meets in **5502 Sennott Square**
    * *Mondays & Wednesdays at 4:30PM - 5:45PM*
* Please make sure you’re in the right place.

<center data-marpit-fragment><mark>Recitation CRN: 17064 (Fridays 4:00PM - 4:50PM) <br>501 Information Sciences Building</mark></center>

---
# hello!
* Shinwoo Kim
  * Second-year student in CS/DS/Math
  * TA for
    * CS0449: Introduction to Systems Software (This class)
    * CS0441: Discrete Structures for CS
* [shinwookim@pitt.edu](mailto:shinwookim@pitt.edu)
* **Materials**: [`https://sites.pitt.edu/~shk148/teaching/CS0449-2234`](https://sites.pitt.edu/~shk148/teaching/CS0449-2234)
<h2 data-marpit-fragment>office hours</h2>

* TBD but will let you know as soon as it's finalized
---
# This Week
* Intro to Linux
* Intro to C programming
* Intro to GDB

---
# Linux and the Thoth Server
* You will run all of your labs on the department's Linux server `Thoth`
* To connect, open: Powershell/CMD (Windows), Terminal (MacOS/Linux)
  * Connect using Secure Shell

<div data-marpit-fragment>

```sh
ssh <<pittid>>@thoth.cs.pitt.edu
```
</div>

* To ensure you have sufficient space to run the assignments/projects of this class, you must **increase your AFS space**.
  * `accounts.pitt.edu` > Email & Messaging > UNIX Quota > Increase Quota


---
# Linux Basics
* Lab0 handout will provide a good overview of some of the basics
  * Move around file system using `cd` and `ls`
  * `mkdir` to make directories, `cp` to copy and `mv` to move
  * `man <<command>>` for the manual if you are ever confused on commands.
 
---
# Moving files from/to Thoth
* Secure Shell (ssh) lets you access Thoth's terminal; Secure Copy Protocol (scp) lets you move files from/to Thoth.
* To copy `local.txt` from your PC to `remote.txt` in your home directory of thoth:
<div data-marpit-fragment>

```sh
scp local.txt user@thoth.cs.pitt.edu:remote.txt 
```
</div>

* To copy `remote.txt` on thoth to `local.txt` on your PC
<div data-marpit-fragment>

```sh
scp user@thoth.cs.pitt.edu:remote.txt local.txt
```
</div>

---
# Editing code on Thoth
* Thoth has vim, nano, and emacs preinstalled.
  * These are sufficient for Lab0 - Lab3, but as labs get more complex, you might want an IDE/code editor:
  * Atom (remote-ftp plugin), Notepad++
  * **VS Code** (remote development extension pack)
* With Atom, and VS Code, you can use SFTP/Remote plugin(s) to edit code directly on thoth without having to copy files back and forth.
  * For VSCode: disable **C/C++ extension**, and **flock** (see settings), then restart VSCode. If you still get repeated password requests, delete `.vscode-server` on thoth and try again. See TA if you have issues setting up VSCode.
---
# Welcome to C
```C
#include <stdio.h> 
int main (int argc, char* argv[]){ 
	// Declare a variable 
	int x; 

	// Assign a variable 
	x = 2; 

	// Print a string and a variable 
	printf("Hello world! x is currently %d \n", x); 

	return 0; 
}
```
---
# Compiling and Running C code
```sh
clang -g -Wall -std=c99 -o lab0 lab0.c
```
* GNU Compiler Collection(gcc) or clang are our compilers of choice:
  * If `-o` is not specified, will output to `a.out`
  * After running clang, We now have an executable file 
  * This should have either no extension or a `.o/.out` extension
  * We can run this file via command line by doing `./programname`
  * As your programs get more complex, we will introduce the concept of makefiles
  * Essentially scripting files that tell gcc what to do

---
# Debugging using the GNU Debugger (GDB)
*print statements are not for debugging*
* GDB lets you natively debug C code from console
  * set breakpoints to examine control flow
  * inspect variables at different points of execution
  
* Download `calculator.c`
* Read through code in text editor, then compile: 
  `$ gcc -Wall -g -std=c99 -o calculator calculator.c`
* Run: `$./ calculator 4 5 +`
* Open GDB: `$gdb calculator`

---
| Command        | Description                                          |
| -------------- | ---------------------------------------------------- |
| `layout split` | Show C source code and assembly instruction together |
| `b 35`         | Set a break point                                    |
| `r 4 5 +`      | Run program with input “`4 5 +`”                     |
| `p argc`       | Print argc variable                                  |
| `p $rdi`       | Print `$rdi` register inside the CPU                 |
| `c`            | Continue execution of the program                    |
| `q`            | Quit GDB                                             |
---
# Valgrind is powerful. And scary. But also useful!
At its most basic, can help you figure out where a segfault occurred and offer some insight as to why
* it also offers many many more advanced features:
  * memory leak analysis
  * memory usage analysis
  * memory debugging

