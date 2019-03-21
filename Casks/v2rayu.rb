cask 'v2rayu' do
  version '1.2.2'
  sha256 '7909b5109f9330d1757688e853c52b615928affcd9a416ca97ff8faff1690e04'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
