cask :v1 => 'tla-plus-toolbox' do
  version '1.4.8'
  sha256 '7f7aec6cc69af1bdbe01e35110939f83b4f880aeec88ce069b9128ab1653da3a'

  # inria.fr is the official download host per the vendor homepage
  url 'https://tla.msr-inria.inria.fr/tlatoolbox/products/TLAToolbox-1.4.8-macosx.cocoa.x86_64.zip'
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
