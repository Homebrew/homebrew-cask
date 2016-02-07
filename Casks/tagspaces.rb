cask 'tagspaces' do
  version '2.1.0'

  if Hardware::CPU.is_32_bit?
    sha256 'be88d60769da6af846f8d84037bcbf4917dbef3735c460cfc8727c8c17ace488'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx32.zip"
  else
    sha256 'a7f7e3854b5f65f2e9c76ab3b8a91c925dcf730e77377e56b14d0347fff9c98b'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx64.zip"
    appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
            checkpoint: 'da1993c795ae304b4fd5b0e43d7caa050932d43f4f8f892cde4268947b7667ee'
  end

  name 'TagSpaces'
  homepage 'http://www.tagspaces.org'
  license :affero

  app 'TagSpaces.app'
end
