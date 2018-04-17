cask 'watch-screenshot-magic' do
  version '1.0.0'
  sha256 'b3214414bd3e96a3f91ca69c5424b36087fb8cd0d531f13bc19365e2603073e9'

  url "https://github.com/Imperiopolis/WatchScreenshotMagic/releases/download/#{version}/WatchScreenshotMagic.tar.gz"
  appcast 'https://github.com/Imperiopolis/WatchScreenshotMagic/releases.atom',
          checkpoint: '1ae8570d9a996920cb960d65cb419af30bf5d475c4772de2e7c8661aa34a5033'
  name 'Watch Screenshot Magic'
  homepage 'https://github.com/Imperiopolis/WatchScreenshotMagic'

  app 'Watch Screenshot Magic.app'
end
