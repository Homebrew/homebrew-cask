cask 'tikzit' do
  version '2.0'
  sha256 'cf06ea31b7b8e1ca85f209a77991df8c0d99f52584cb25ad795ca2c16b6ee204'

  # github.com/tikzit/tikzit was verified as official when first introduced to the cask
  url "https://github.com/tikzit/tikzit/releases/download/v#{version}/tikzit-osx.dmg"
  appcast 'https://github.com/tikzit/tikzit/releases.atom'
  name 'TikZiT'
  homepage 'https://tikzit.github.io/'

  app 'TikZiT.app'
end
