cask 'xmind-zen' do
  version '10.2.0-202007201811'
  sha256 '0bcb2bd00e38633bf72936f6685c25359c595b811afeec837b4f8a922a932658'

  url "https://www.xmind.net/xmind/downloads/XMind-2020-for-macOS-#{version}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
