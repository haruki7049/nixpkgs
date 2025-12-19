{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "git-vrc";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "anatawa12";
    repo = "git-vrc";
    rev = "v${version}";
    hash = "sha256-bsK7l2knYJW7M5klUQZJNpx5LRjuIcr0RvyUc28Oqdc=";
  };

  cargoHash = "sha256-/vO8xkD0uW0kqF8RzvAw2/TAvmDI5N8GZD0f6S6lY+M=";

  meta = {
    description = "A command line extension for git to reduce meaningless diff on git of VRC project";
    homepage = "https://github.com/anatawa12/git-vrc";
    license = [ lib.licenses.asl20 lib.licenses.mit ];
    maintainers = with lib.maintainers; [ haruki7049 ];
    mainProgram = "git-vrc";
  };
}
