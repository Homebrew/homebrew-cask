cask 'tweeten' do
  version '4.6.9'
  sha256 '1d917c0cafe121e2f2d96bbaf32de31a4d61a7f176384d5dcbd2b63cd49ac82f'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
