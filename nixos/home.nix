{ config, pkgs, ... }:

{
  home.username = "joe";
  home.homeDirectory = "/home/joe";
  home.stateVersion = "23.05";
  home.packages = [ pkgs.httpie ];
}
