# Bash scripting tutorials

This tutorial will walk you through your first steps with bash scripting.
Go through the files one by one and try to run the commands on your own.

The order we recommend is

```
basic-commands.sh -> system-commands.sh -> file-commands.sh -> Bash For Text Processing Introduction.ipynb
```

Folder structure:
```
.
├── auto.csv                                     # Example CSV file to demonstrate basic commands
├── basic-commands.sh                   # <--- Start here. Get to know your way around the terminal and basic commands.
├── system-commands.sh                  # Basic commands to install packages and monitor system resources
├── file-commands.sh                    # File processing using Bash. Go through this before diving into the notebook
├── install_openfst.sh                           # Script to automate installation of OpenFST library
├── README.md                                    # This file
└── Bash For Text Processing Introduction.ipynb  # More in-depth introduction to text processing using Bash
```

## How to run the notebook

To run the bash tutorial notebook first install the `bash_kernel` for jupyter notebook:

```
pip install bash_kernel
python -m bash_kernel.install
```

and then run

```
jupyter notebook
```

and open `Bash For Text Processing Introduction.ipynb`

# Useful resources

- [The Missing Semester](https://www.youtube.com/watch?v=Z56Jmr9Z34Q&list=PLyzOVJj3bHQuloKGG59rS43e29ro7I57J)
- [Matt Might Blog](https://matt.might.net/articles/bash-by-example/)
