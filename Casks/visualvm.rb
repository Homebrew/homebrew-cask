cask 'visualvm' do
  version '1.4.1'
  sha256 '32a6210c6c1d1e96d795f1731b73c93c0b44b1b04a551474088c84b25790fd2a'

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
