cask :v1 => 'tla-plus-toolbox' do
  version '1.5.1'
  sha256 'd0d966c6742c6011d46e6de6760bf7300ed49649a85bccab0b097b0ec5ad42cd'

  # inria.fr is the official download host per the vendor homepage
  url "https://tla.msr-inria.inria.fr/tlatoolbox/products/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip"
  name 'TLA+ Toolbox'
  homepage 'http://research.microsoft.com/en-us/um/people/lamport/tla/toolbox.html'
  license :mit

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8829
  app 'toolbox/toolbox.app', :target => 'TLA+ Toolbox.app'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java
  EOS
end
