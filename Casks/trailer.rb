cask :v1 => 'trailer' do
  version '1.3.6'
  sha256 'e42dabd6b7759fdd9a816f0c04c2eb6f7dd15c21de47048d8228f6bffd6dc41d'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.delete('.')}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => 'aaf3f91888b757ec234643a9f45259fd9650a687c6146c723084e7d80979a6a4'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
