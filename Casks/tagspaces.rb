cask 'tagspaces' do
  version '2.0.1'

  if Hardware::CPU.is_32_bit?
    sha256 'be88d60769da6af846f8d84037bcbf4917dbef3735c460cfc8727c8c17ace488'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx32.zip"
  else
    sha256 'c0dc6600fe6cdf5ea55972b6d6dd6b0ae922450f0db1e3d834e0e6aee831327b'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx64.zip"
    appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
            :sha256 => '209777f2eb0715d375ca8e97f21ffaa48f51055e3b59b2dab19c60e5b040a163'
  end

  name 'TagSpaces'
  homepage 'http://www.tagspaces.org'
  license :affero

  app 'TagSpaces.app'
end
