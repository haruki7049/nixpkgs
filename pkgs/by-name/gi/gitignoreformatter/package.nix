{
  python3Packages,
  fetchPypi,
}:

python3Packages.buildPythonApplication rec {
  pname = "gitignoreformatter";
  version = "1.1.3.0";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-MXn/m0MdG/bHSKR5PdGsoTYd/puk5yBqVuYlDLpTJ7U=";
  };

  build-system = with python3Packages; [
    setuptools
  ];
}
