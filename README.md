# Bf-prank
This project or something is a silly idea, that a program in [brainfuck]https://gist.github.com/roachhd/dce54bec8ba55fb17d3a is like the "perfect malware" because it is less understandable than assembly.

So for the sillies, this... thing is an attempt at making some sort of "prankware" using ([systemf](https://github.com/ajyoon/systemf).

It's gonna be reversible.  
Also, don't run this on your computer with systemf while it's not complete like, even I wouldn't, like don't do that.

## Structure

At root you have `main.bf` which is basically where I (try to) write my brainfuck "code".  
(Yes, the comments are basically a kind of pseudo-assembly, I know you're impressed)  

`tersify.sh` is the bash script (systemf only works on Linux anyway) to remove the comments.  
The output is a minimalist stream of brainfuck code located at `terse/main.bf` (it isn't ignored)

## Debugging

I recommend [this website](https://arkark.github.io/brainfuck-online-simulator/) for debugging/testing the code, as well as simply run it.  
**Warning:** The `%` might not work at all

## REMINDER‼️

**DO NOT** trust any `brainfuck` source code running with `systemf` you can find on the internet.  
Others might use `brainfuck/systemf` for bad things, for the reasons I mentioned above  
**THEY WILL NOT BE AS KIND AS ME**

If you're not sure, my advice would be to pass it in the [earlier mentioned debugger](https://arkark.github.io/brainfuck-online-simulator/) after switching the `%` to something else like `.`  

<details>
  <summary><h3>You can try something like this bash command:</h3></summary>

```sh
cat $FILE | tr -c "%" "."
# Replace $FILE by the file name or use something else than cat idk
```

</details>

Then you can check the system calls on the internet like [here](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)

You can also try finding a way to compile it then you can pass it in Ghidra though, if you're crazy  
