cask 'trailer' do
  version '1.3.17'
  sha256 '3c556eb1e68751818346e3468ca5d779c7f38f1ad3cd9b8d14a3baddc7deb2be'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: 'eeded65b93ba8a391c14e4b5e60187bc56c56cdbe197005ef1288236aee3bd91'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
