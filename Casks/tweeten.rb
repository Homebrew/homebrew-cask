cask 'tweeten' do
  version 'untagged-98fbba98905058ce4e30'
  sha256 'a64c246cff1e8d7cd3a029a1754e5404bd706ab65b849e79a5a580cecfb61748'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
