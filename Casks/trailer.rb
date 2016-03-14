cask 'trailer' do
  version '1.3.15'
  sha256 'a03bec0fc1349094746bc8cb88c791a225b0a66068c16be9947f9f81275adf26'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '0d028a278eb497c8facd13b650ae8c148542d362766e1156bc759b47fd5006de'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
