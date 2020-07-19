{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [ 
    (pkgs.texlive.combine {
      inherit (pkgs.texlive) 
      scheme-medium 
      enumitem
      xifthen 
      ifmtarg 
      sourcesanspro 
      environ
      tcolorbox; 
    })
    pkgs.font-awesome_4
    pkgs.imagemagick
  ];
}
