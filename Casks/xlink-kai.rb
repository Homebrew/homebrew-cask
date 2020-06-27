cask 'xlink-kai' do
  version '7.4.37'
  sha256 'f19d595d94b156a801f12529c95086f20d1c7ca25961f52a025153a2e4d30420'

  # github.com/Team-XLink/releases/ was verified as official when first introduced to the cask
  url "https://github.com/Team-XLink/releases/releases/download/v#{version}/XLinkKai-7.4.37-539579342-macOS.dmg"
  appcast 'https://github.com/Team-XLink/releases/releases.atom'
  name 'XLink Kai'
  homepage 'https://www.teamxlink.co.uk/'

  depends_on cask: 'wireshark-chmodbpf'

  app 'XLink Kai.app'
end
