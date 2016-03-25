cask 'tagspaces' do
  version '2.1.1'

  if Hardware::CPU.is_32_bit?
    sha256 'be88d60769da6af846f8d84037bcbf4917dbef3735c460cfc8727c8c17ace488'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx32.zip"
  else
    sha256 '912e97396cec629a0ed1bd8e50204bafd699e13c18d927c6ce9489648cf17d41'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx64.zip"
    appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
            checkpoint: '131248cf9fab7c55e92223fdc1b4ad4eb5b44229f6fdbb133d485d7717f507af'
  end

  name 'TagSpaces'
  homepage 'http://www.tagspaces.org'
  license :affero

  app 'TagSpaces.app'
end
