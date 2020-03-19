cask 'v2rayu' do
  version '2.1.0'
  sha256 '4bdff8dc6caff3772022221fee77bdc76edc5af660ce9a00337d017341aa7243'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
