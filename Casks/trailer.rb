cask :v1 => 'trailer' do
  version '1.3.10'
  sha256 '85b6f65683e0a639e170a36b120a821664a37b6fbf011d6c849024bd3383e41f'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.delete('.')}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => 'aaf3f91888b757ec234643a9f45259fd9650a687c6146c723084e7d80979a6a4'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
