# Advent of Code 2024 🎄

Using the [Advent of Code 2024](https://adventofcode.com/) puzzles to dive into [Lua](https://www.lua.org/)

## Project Overview

*each daily challenge will be located under the `src/` directory*

```
advent-of-code-2024/
├── src/
│   └── day#/
│       ├── main.lua
│       ├── puzzle input data file
│       └── day#.md for puzzle reference
├── utils/
│   └── helper lua scripts
└── README.md
```

## How do I...?

### Setup

- [Clone project](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)
- [Install Lua](https://www.lua.org/download.html)
- [Install Luarocks](https://github.com/luarocks/luarocks/wiki/Download)
  - A package manager for Lua

Install Lua packages (if any) - *From root of project*

```zsh
luarocks install --deps-only advent-of-code-2024-dev-1.rockspec
```

### Run

Example for running day 1 challenge - *From root of project*

```zsh
lua src/day1/main.lua
```

*Use the same approach for running any other puzzle solutions in `src/`*
