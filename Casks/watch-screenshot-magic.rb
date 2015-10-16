cask :v1 => 'watch-screenshot-magic' do
  version '1.0.0'
  sha256 'b3214414bd3e96a3f91ca69c5424b36087fb8cd0d531f13bc19365e2603073e9'

  url "https://github.com/Imperiopolis/WatchScreenshotMagic/releases/download/#{version}/WatchScreenshotMagic.tar.gz"
  appcast 'https://github.com/Imperiopolis/WatchScreenshotMagic/releases.atom'
  name 'Watch Screenshot Magic'
  homepage 'https://github.com/Imperiopolis/WatchScreenshotMagic'
  license :mit

  app 'Watch Screenshot Magic.app'
end
