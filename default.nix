let
 # pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/219f896bdf192721446db4fedc338eebf732057d.tar.gz") {};
 # pkgs = import (fetchTarball "https://github.com/rstats-on-nix/nixpkgs/archive/2025-09-01.tar.gz") {};
 pkgs = import (fetchTarball "https://github.com/rstats-on-nix/nixpkgs/archive/2026-02-02.tar.gz") {};
 
  rpkgs = builtins.attrValues {
    inherit (pkgs.rPackages) 
      purrr
      magrittr
      yaml
      optparse
      fs
      # renv
      # rix
      ;
  };
 
  system_packages = builtins.attrValues {
    inherit (pkgs) 
      # git
      # git-lfs
      glibcLocales
      # nix
      # quarto
      R;
  };
 
  # wrapped_pkgs = pkgs.rstudioWrapper.override {
  #   packages = [ rpkgs ];
  # };
 
in

pkgs.mkShell {
  LOCALE_ARCHIVE = if pkgs.stdenv.hostPlatform.system == "x86_64-linux" then "${pkgs.glibcLocales}/lib/locale/locale-archive" else "";
  LANG = "en_US.UTF-8";
  LC_ALL = "en_US.UTF-8";
  LC_TIME = "en_US.UTF-8";
  LC_MONETARY = "en_US.UTF-8";
  LC_PAPER = "en_US.UTF-8";
  LC_MEASUREMENT = "en_US.UTF-8";

  # buildInputs = [ rpkgs system_packages wrapped_pkgs ];
  buildInputs = [ rpkgs system_packages ];
  
}
