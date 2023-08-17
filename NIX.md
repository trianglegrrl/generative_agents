## Installation and Setup

### Using Nix

[Nix](https://nixos.org/) is a powerful package manager for Linux and other Unix systems that makes package management reliable and reproducible. Follow the steps below to get started with Nix:

#### Step 1: Install Nix

Open a terminal and run the following command:

\```bash
sh <(curl -L https://nixos.org/nix/install)
\```

Follow the instructions on the screen.

#### Step 2: Activate Nix

Once installed, activate Nix by running:

\```bash
. $HOME/.nix-profile/etc/profile.d/nix.sh
\```

You may want to add the above line to your `.bashrc` or `.zshrc` to ensure Nix is always activated when you open a terminal.

#### Step 3: Enter the Nix Shell

Navigate to the project directory and enter the Nix shell:

\```bash
cd /path/to/your/project
nix-shell
\```

This will create a controlled environment with all the necessary dependencies, including Python 3.9, virtualenv, and more.

### Usage Inside the Nix Shell

Once inside the Nix shell, the virtual environment will be activated, and all dependencies will be installed or updated from `requirements.txt` if it exists.

1. **Working with the Virtual Environment**: The virtual environment is automatically activated. You can run Python scripts, use pip, etc., as usual.
2. **Updating Requirements**: If you update `requirements.txt`, simply re-enter the Nix shell, and the requirements will be updated automatically.
3. **Exiting the Nix Shell**: To exit the Nix shell, simply type `exit`.


