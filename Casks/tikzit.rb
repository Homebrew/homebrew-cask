cask 'tikzit' do
  version '2.1.1'
  sha256 '49a00c97e3c4fa48b62e04012b5b91daf998d2677daab1e5c51caaf164791a9f'

  # github.com/tikzit/tikzit was verified as official when first introduced to the cask
  url "https://github.com/tikzit/tikzit/releases/download/v#{version}/tikzit-osx.dmg"
  appcast 'https://github.com/tikzit/tikzit/releases.atom'
  name 'TikZiT'
  homepage 'https://tikzit.github.io/'

  depends_on macos: '>= :sierra'

  app 'TikZiT.app'
end
