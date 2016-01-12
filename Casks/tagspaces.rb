cask 'tagspaces' do
  version '2.0.4'

  if Hardware::CPU.is_32_bit?
    sha256 'be88d60769da6af846f8d84037bcbf4917dbef3735c460cfc8727c8c17ace488'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx32.zip"
  else
    sha256 '1c28f143e28b167a586ed815ca4b87c3e65f237d8a5dd7ec2946d60afad15577'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx64.zip"
    appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
            :sha256 => 'eedc9c531f539694698591f7befc49737f84fe2245d9cc3cf0edc23976b9c80a'
  end

  name 'TagSpaces'
  homepage 'http://www.tagspaces.org'
  license :affero

  app 'TagSpaces.app'
end
