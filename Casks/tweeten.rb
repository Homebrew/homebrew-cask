cask 'tweeten' do
  version '4.6.0'
  sha256 'dc0cb6dfd5adbc5670117f627ed6e748fcacf5e47b98d92ef32a4d785790765c'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'Tweeten.app'
end
