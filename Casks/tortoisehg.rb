cask 'tortoisehg' do
  version '3.2.4'
  sha256 'c529539e20f4ff2f6d181a5c7f64ad5dcd9346605011ab4c3725c7cedf6b5a8c'

  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.zip"
  name 'TortoiseHg'
  homepage 'http://tortoisehg.bitbucket.org/'
  license :gpl

  app 'TortoiseHg.app'
end
