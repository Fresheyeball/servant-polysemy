{ haskellLib
, haskellPackages }:
haskellPackages.override {
  overrides = self: super: {
    # Put any overrides here, e.g:
    #
    # Jailbreak a certain package:
    #   pandoc-lens = haskellLib.doJailbreak super.pandoc-lens;
    #
    # Use a local copy of another package:
    #   pandoc-wrapper = super.callPackage ../pandoc-wrapper/pkg.nix { };

    polysemy-zoo = haskellLib.unmarkBroken (haskellLib.doJailbreak super.polysemy-zoo);
    compact = haskellLib.doJailbreak super.compact;
    type-errors-pretty = haskellLib.doJailbreak super.type-errors-pretty;
    servant = haskellLib.doJailbreak super.servant;
  };
}
