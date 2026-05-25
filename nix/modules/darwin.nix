# nix/modules/darwin.nix — auto-generated from erased-serde.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.erased-serde; in {
  options.services.erased-serde = {
    enable = lib.mkEnableOption "erased-serde";
    package = lib.mkOption { type = lib.types.package; default = pkgs.erased-serde or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
