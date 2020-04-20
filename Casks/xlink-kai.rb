cask 'xlink-kai' do
  version '7.4.35'
  sha256 'ebc988dd6491439b897f8f6e51f870a919f0d416a7d6096a62441c8e7bf05d05'

  # github.com/Team-XLink/releases/ was verified as official when first introduced to the cask
  url "https://github.com/Team-XLink/releases/releases/download/v#{version}/XLink.Kai.app.zip"
  appcast 'https://github.com/Team-XLink/releases/releases.atom'
  name 'XLink Kai'
  homepage 'https://www.teamxlink.co.uk/'

  depends_on macos: '>= :mavericks'
  depends_on cask: 'wireshark-chmodbpf'

  app 'XLink Kai.app'
end
