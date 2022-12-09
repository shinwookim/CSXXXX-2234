---
marp: true
theme: pitt
paginate: true
header: University of Pittsburgh
footer: © 2023 Shinwoo Kim
---

<!-- _class: title -->

# LECTURE TITLE
## LECTURE SUBTITLE

COURSE NUMBER: (COURSE TITLE)
Week XX, MMM. DD, YYYY
Section XXXX - DD X PM

**Shinwoo Kim**
https://sites.pitt.edu/~shk148/CS0441-2231/

Department of Computer Science
School of Computing & Information
University of Pittsburgh

---


# Text

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra, neque eu semper ~~placerat~~, <u>sapien</u> neque <mark>tempor</mark> elit, id pulvinar sapien ipsum eu nisl. Nunc augue sapien, convallis et ligula in, consectetur congue quam.
> Aenean porttitor sed quam id vulputate. Pellentesque imperdiet feugiat iaculis. Donec a sem vitae nisl egestas pretium.

---
# Heading 1 (First one only)
## Heading 2
# Another Heading 1
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6
---
# Lists
1. First Step
2. Second Step

+ Point One
+ Point Two
  + Point Two.Two
* Fragmented Point


---

# Code
Inline: `system.out.println("Hello World!");`

```java
int factorial(int n) {  
    if (n <= 1)  
        return 1;  
    else  
        return (n * factorial(n ? 1));  
}  
```

---
# Image

![center width:500px](https://www.thoughtco.com/thmb/b6GQkWD-BBjPRJ1wlEY2mCQtpDY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-107636032-293dc66802a54c4685892d2bb7831ef5.jpg)

Writing `center` in alt text centers image!

---

# Math
+ Inline: $f(x)dx$
$$Q(x)\times \int f(x)$$

---
# Table

| Col 1 | Col 2 | Col 3 |
| ----- | ----- | ----- |
| 1     | 2     | 3     |