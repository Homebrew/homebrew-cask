cask 'tweeten' do
  version '4.6.7'
  sha256 '35ef7a0008d92fde3ab59dba29a3a925ab841dbc061bd47885b8deed92a9c61f'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
