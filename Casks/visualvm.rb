cask 'visualvm' do
  version '1.4.3'
  sha256 'c9ab1f6b0356ba228b9841dbaa23de511fadbd797cf158af118ecc63eaca050b'

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
