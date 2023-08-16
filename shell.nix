{ pkgs ? import <nixpkgs> {} }:

let
  libPath = pkgs.lib.makeLibraryPath [ pkgs.gcc.cc pkgs.zlib ];
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    python39
    python39Packages.virtualenv
    bashInteractive
    gcc
    zlib
  ];

  shellHook = ''
    export LD_LIBRARY_PATH=${libPath}:$LD_LIBRARY_PATH

    echo "Welcome to your Python 3.9 environment, complete with virtualenv!"

    # Check if a virtual environment exists; create and activate if not
    if [ ! -d "venv" ]; then
      echo "Virtual environment not found. Creating one..."
      virtualenv venv
    fi

    echo "Activating virtual environment..."
    source venv/bin/activate

    # Update or install requirements if a requirements.txt file exists
    if [ -f "requirements.txt" ]; then
      echo "Updating requirements from requirements.txt..."
      pip install --upgrade -r requirements.txt
    else
      echo "No requirements.txt found. You may want to update your dependencies manually."
    fi
  '';
}

