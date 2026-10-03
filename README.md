# Turing Learn

A different approach to AI.

## Overview

Turing Learn is a research project made by a single person with the idea
of using a different approach to AI.

The idea is to use an "omnipotent" model to find optimal relationships
between input and outputs, to infer them.

The strategy is then to find the shortest turing machine that can best
produce the expected output. Such a method has the potential of outperforming
current AI models in various tasks.

The idea started as a thought experiment which led it to where it stands.
However, it was later discovered that by Solomonoff's theory of inductive
inference, the idea is as "omnipotent" as naively thought. One can
reason about information theory to discover how powerful this method can be.

## Disclaimer

This research project is still a proof of concept and is being refined 
and further researched with time.

The code may have flaws, bugs or optimization problems, as well as not
being particularly clean. It is still in development and constant reiteration.

## Motivation

Modern AI, LLMs to be more exact, are inefficient at best and brute-force at worst,
depending on how you view them. Supercomputers, huge amounts of data, power, space,
water, money and time are necessary to train, as well as for inference
(but to a lesser extent).

Meanwhile, they completely fail, with their billions of parameters, to map a simple
function reproducible with just a couple of states in a turing machine.

This work is not denying that other models aren't useful nor powerful. That, they are.
But when comparing those huge, extremely complex models, to simple turing machines, or
even brains and the power, water, space, etc... That they rely on, it clearly shows a
pattern: inefficiency.

The current methodology is mostly* not to increase that efficiency, but to throw more
and more compute, as well as all the other resources mentioned, until it gets better.
Why use a supercomputer to search, iterating through a sorted array of a trillion elements,
if one could use a calculator chip to run a binary search for just 40 iterations? 

This is the core thought experiment behind this project: if we allow such inefficiency
in algorithms, that such vast amount of resources are needed, why can't we just
jump to equally inefficient algorithms that may produce better results?

Note: The binary search example isn't meant to say there's an obvious way to make
modern architectures much more efficient, nor that there isn't an effort. It's just
meant as illustration to show the inefficiency. This project is thought to be
even more inefficient in those terms. The core point is to embrace the inefficiency
and reach further beyond the current models. That said, it is obviously meant to be
as efficient as possible (thus C++).

## Compiling

Before running any script, the user is adviser to read through them. They are very simple.
The idea is to run `init.sh` followed by `compile.sh`. However these commands should suffice:

```bash
git submodule update --init --recursive
cmake -B build -D CMAKE_BUILD_TYPE=$type -D BUILD_TESTS=OFF
cmake --build build --parallel
```

## How to use

This project is more meant as a library than anything else, and even at that it fails
as it is a current work in progress.

The main.cpp file is the entry point, however, it is only meant for testing and holds
no meaning.

There currently is no guide on how to use the library, although anyone is free to by
exploring

## Contributing

This research project is being worked on without contributions in mind, and as such
the repository isn't prepared for it.

Although contributions are welcome, I would rather be contacted about them. If you
have any idea as how to make the project more efficient, algorithmically or
in code, or would like to discuss such matters, feel free to contact.

## Goals

The first main goal is to be able to find a turing machine capable of counting on any
computer, with very few examples, and in a very short amount of time.
A task that is comically inconsistent with modern AIs, and impossible in regular
computers (running inference on said AIs).

If that is possible, it's believed that when run on something much more powerful, perhaps
akin to a supercomputer or data center, it could have real, powerful, utility.

It is hoped, and effort is being put such that a data center wouldn't have to be
used for meaningful applications. Unfortunately this view might be mathematically unrealistic.

## Future Ideas

Many ideas for optimization are currently being researched and applied, some of which are:
- general code optimizations and profiling
- accelerated turing machine simulation
- monte-carlo simulation instead of enumeration
- reinforcement learning, with the monte-carlo simulation (?) 

Some other more "brute-force", or less efficient optimizations can be further made:
- CPU parallelization
- GPU parallelization (an algorithm for such was already thought of)

## AI Policy

Strict NO-AI policy for this project (ironically).

## Thanks

Special thanks to the Busy Beaver Challenge, which has a ton of research on related topics,
as well as it's community that was kind enough to directly answer some of my questions.
