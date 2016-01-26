cask 'watch-screenshot-magic' do
  version '1.0.0'
  sha256 'b3214414bd3e96a3f91ca69c5424b36087fb8cd0d531f13bc19365e2603073e9'

  url "https://github.com/Imperiopolis/WatchScreenshotMagic/releases/download/#{version}/WatchScreenshotMagic.tar.gz"
  appcast 'https://github.com/Imperiopolis/WatchScreenshotMagic/releases.atom',
          checkpoint: '145af78b658f959a27b7e5862d16799845b49acc6a1a45d6b0b573cc40cd6218'
  name 'Watch Screenshot Magic'
  homepage 'https://github.com/Imperiopolis/WatchScreenshotMagic'
  license :mit

  app 'Watch Screenshot Magic.app'
end
