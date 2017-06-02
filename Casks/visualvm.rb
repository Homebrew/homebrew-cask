cask 'visualvm' do
  version '1.3.9'
  sha256 '969708277eacfbaf1a0bc465110db454efd8225aa43db090109676bedff386b6'

  # github.com/oracle/visualvm was verified as official when first introduced to the cask
  url "https://github.com/oracle/visualvm/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg"
  appcast 'https://github.com/oracle/visualvm/releases.atom',
          checkpoint: 'd73b1a1df38bb92c7735264e354ee0b011d069d6694cc79cb0069229df60f808'
  name 'VisualVM'
  homepage 'https://visualvm.github.io/'

  app 'VisualVM.app'

  caveats do
    depends_on_java
  end
end
