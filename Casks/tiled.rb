cask 'tiled' do
  version '1.1.1'
  sha256 'cf4104d342f57e89c9763560f620dbdde9cf8194fb0d7908aecf43d93a7b69ec'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: '917a431f8fe507c9af98bc89fd844ab535a191891ab3c11dcfee15db6ba409ad'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
