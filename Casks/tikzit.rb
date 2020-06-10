cask 'tikzit' do
  version '2.1.5'
  sha256 'a4e191e65462f46a2aa92ab08f136f4f799c2d43f062564bdff833c9b2fb3ce5'

  # github.com/tikzit/tikzit/ was verified as official when first introduced to the cask
  url "https://github.com/tikzit/tikzit/releases/download/v#{version}/tikzit-osx.dmg"
  appcast 'https://github.com/tikzit/tikzit/releases.atom'
  name 'TikZiT'
  homepage 'https://tikzit.github.io/'

  depends_on macos: '>= :sierra'

  app 'TikZiT.app'
end
