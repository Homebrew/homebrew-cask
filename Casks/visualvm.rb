cask 'visualvm' do
  version '1.4.4'
  sha256 '8089a735d723bc1ea866645e4bbeffceb6c174d9bf4d41036e02ffbb3d188a8a'

  # github.com/oracle/visualvm was verified as official when first introduced to the cask
  url "https://github.com/oracle/visualvm/releases/download/#{version}/VisualVM_#{version.no_dots}.dmg"
  appcast 'https://github.com/oracle/visualvm/releases.atom'
  name 'VisualVM'
  homepage 'https://visualvm.github.io/'

  app 'VisualVM.app'

  caveats do
    depends_on_java
  end
end
