let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
  	prettierd
	luajitPackages.luarocks_bootstrap
	dmd
	dub
	serve-d
  ];
  shellHook = ''
  	echo $(pwd)
	PATH="$PATH:$(pwd)/bin"
  '';
}
