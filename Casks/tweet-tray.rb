cask 'tweet-tray' do
  version '1.1.0'
  sha256 'cae9989b1e151cc7b04076cf5cc69c87e7f19a0d6cef950840296e0cfdcdcade'

  url "https://github.com/jonathontoon/tweet-tray/releases/download/v#{version}/tweet-tray-#{version}.dmg"
  appcast 'https://github.com/jonathontoon/tweet-tray/releases.atom',
          checkpoint: 'b1f59eb4dc071f9f2401a3cae031c4baf7d1278b825799813913aa1fe7232a4f'
  name 'Tweet Tray'
  homepage 'https://github.com/jonathontoon/tweet-tray'

  app 'Tweet Tray.app'
end
