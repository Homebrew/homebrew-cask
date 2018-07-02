cask 'tweeten' do
  version '4.5.3'
  sha256 'a63664d35f7014cec8f3e810d0d5e2748c2b9b81dbc506bb79aaa4c5cd33694e'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
