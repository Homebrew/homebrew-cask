cask 'xlink-kai' do
  version '7.4.36'
  sha256 '931b8250de58bf24553e26cb6507186005520d8eec4c6f83d1db63c613693717'

  # github.com/Team-XLink/releases/ was verified as official when first introduced to the cask
  url "https://github.com/Team-XLink/releases/releases/download/v#{version}/XLink.Kai.app.zip"
  appcast 'https://github.com/Team-XLink/releases/releases.atom'
  name 'XLink Kai'
  homepage 'https://www.teamxlink.co.uk/'

  depends_on cask: 'wireshark-chmodbpf'

  app 'XLink Kai.app'
end
