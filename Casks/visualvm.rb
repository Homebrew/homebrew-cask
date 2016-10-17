cask 'visualvm' do
  version '1.3.9'
  sha256 '969708277eacfbaf1a0bc465110db454efd8225aa43db090109676bedff386b6'

  # github.com/visualvm/visualvm.src was verified as official when first introduced to the cask
  url "https://github.com/visualvm/visualvm.src/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg"
  appcast 'https://github.com/visualvm/visualvm.src/releases.atom',
          checkpoint: 'dde5d93c09ce408c053b472040a2e2bfb0c283152722968c7da55985489cac41'
  name 'VisualVM'
  homepage 'https://visualvm.github.io'

  app 'VisualVM.app'

  caveats do
    depends_on_java
  end
end
