cask 'tla-plus-toolbox' do
  version '1.5.2'
  sha256 '4c35713d1c5cdb8c4b3883fcd002098dcc1d2e64f9251455857fcb71a44d00e6'

  # inria.fr is the official download host per the vendor homepage
  url "https://tla.msr-inria.inria.fr/tlatoolbox/products/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip"
  name 'TLA+ Toolbox'
  homepage 'https://research.microsoft.com/en-us/um/people/lamport/tla/toolbox.html'
  license :mit

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8829
  app 'toolbox/toolbox.app', :target => 'TLA+ Toolbox.app'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java
  EOS
end
