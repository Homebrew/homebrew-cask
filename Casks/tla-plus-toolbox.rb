cask 'tla-plus-toolbox' do
  version '1.5.2'
  sha256 '4c35713d1c5cdb8c4b3883fcd002098dcc1d2e64f9251455857fcb71a44d00e6'

  # tla.msr-inria.inria.fr/tlatoolbox was verified as official when first introduced to the cask
  url "https://tla.msr-inria.inria.fr/tlatoolbox/products/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip"
  name 'TLA+ Toolbox'
  homepage 'https://research.microsoft.com/en-us/um/people/lamport/tla/toolbox.html'

  app 'TLA+ Toolbox.app'

  caveats do
    depends_on_java
  end
end
