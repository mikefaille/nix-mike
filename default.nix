{ system ? builtins.currentSystem }:                                                   

let                                                                                    
   pkgs = import <nixpkgs> { inherit system; };                                         

   callPackage = pkgs.lib.callPackageWith (pkgs // self);                               

   self = {                                                                             
      lammps = callPackage ./pkgs/spotify { };                                            
   };                                                                                   
   in self 
