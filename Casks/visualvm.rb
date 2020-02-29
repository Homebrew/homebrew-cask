cask 'visualvm' do
  version '2.0'
  sha256 '6c52c108dce9d1c6f3844bc5360f7496fedcacec0e59b4a8087d467ee84a0a70'

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
