cask 'tweeten' do
  version '4.5.2'
  sha256 'aee5fc5f245846bf15b8e63e64f06919f37618682e8efd536e270d24a2c2735c'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
