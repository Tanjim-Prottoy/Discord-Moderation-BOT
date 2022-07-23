{ pkgs }: {
  deps = [
    pkgs.nodejs-16_x
    pkgs.nodePackages.typescript-language-server
        pkgs.nodePackages.yarn
        pkgs.replitPackages.jest
    pkgs.python3
		pkgs.ffmpeg
    pkgs.libuuid
  ];
  env = {
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [pkgs.libuuid];
  };
}