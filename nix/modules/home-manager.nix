# nix/modules/home-manager.nix — auto-generated from erased-serde.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.erased-serde; in {
  options.programs.erased-serde = {
    enable = lib.mkEnableOption "erased-serde";
    package = lib.mkOption { type = lib.types.package; default = pkgs.erased-serde or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
