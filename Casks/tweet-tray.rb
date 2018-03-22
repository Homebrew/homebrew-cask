cask 'tweet-tray' do
  version '1.0.3'
  sha256 '443b74c4f651a35ae2bbc379e5b79679098f8129e24cb8de1837b4c58a4b5c58'

  url "https://github.com/jonathontoon/tweet-tray/releases/download/v#{version}/tweet-tray-v#{version.no_dots}.dmg"
  appcast 'https://github.com/jonathontoon/tweet-tray/releases.atom',
          checkpoint: '4e416aeac88ae75d9483e340378b795116da77c312db5c1352c870537f70082c'
  name 'Tweet Tray'
  homepage 'https://github.com/jonathontoon/tweet-tray'

  app 'Tweet Tray.app'
end
