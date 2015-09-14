cask :v1 => 'trailer' do
  version '1.3.7'
  sha256 '9f022093051d6512a888cb1a0760afebed51e7c9f33dd991a81218f492491e55'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.delete('.')}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => 'aaf3f91888b757ec234643a9f45259fd9650a687c6146c723084e7d80979a6a4'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
