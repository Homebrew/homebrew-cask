cask 'v2rayu' do
  version '1.3.0'
  sha256 '31bb20a2dae246c0dd29ae00608af3a8c9081491e943338e4c7979edd4b25992'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
