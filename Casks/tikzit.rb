cask 'tikzit' do
  version '2.1.2'
  sha256 '75b079085a686a7254abb381294f7d04c0a8ac12c0aca0cc5562b79103bc3819'

  # github.com/tikzit/tikzit was verified as official when first introduced to the cask
  url "https://github.com/tikzit/tikzit/releases/download/v#{version}/tikzit-osx.dmg"
  appcast 'https://github.com/tikzit/tikzit/releases.atom'
  name 'TikZiT'
  homepage 'https://tikzit.github.io/'

  depends_on macos: '>= :sierra'

  app 'TikZiT.app'
end
