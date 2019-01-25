cask 'tikzit' do
  version '2.1.3'
  sha256 '0dc73c520530213499c894e8fc27a1dc84c096e7df8bb0d84a9269f65da8dd33'

  # github.com/tikzit/tikzit was verified as official when first introduced to the cask
  url "https://github.com/tikzit/tikzit/releases/download/v#{version}/tikzit-osx.dmg"
  appcast 'https://github.com/tikzit/tikzit/releases.atom'
  name 'TikZiT'
  homepage 'https://tikzit.github.io/'

  depends_on macos: '>= :sierra'

  app 'TikZiT.app'
end
