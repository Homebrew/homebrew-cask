cask 'xlink-kai' do
  version '7.4.37'
  sha256 'bd9fad75377aaade3cfa3d0ed83538ff970bf688c11bee5e8408707f7c52d7bd'

  # github.com/Team-XLink/releases/ was verified as official when first introduced to the cask
  url "https://github.com/Team-XLink/releases/releases/download/v#{version}/XLink.Kai.macOS.zip"
  appcast 'https://github.com/Team-XLink/releases/releases.atom'
  name 'XLink Kai'
  homepage 'https://www.teamxlink.co.uk/'

  depends_on cask: 'wireshark-chmodbpf'

  app 'XLink Kai.app'
end
