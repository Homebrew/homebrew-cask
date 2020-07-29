cask 'v2rayu' do
  version '2.2.0'
  sha256 'c50540db6ce16b6169352b31728da3de1e4f7d092c8acefd3ad5faed49729272'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
