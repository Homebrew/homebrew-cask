cask :v1 => 'tagspaces' do
  version '1.8.1'
  sha256 '1a6d63598b5689b7fee4cb0c469a5f87251f43008f208c08020ded64c8fbcf66'

  url "https://github.com/uggrock/tagspaces/releases/download/v#{version}/tagspaces-#{version}-osx.zip"
  homepage 'http://www.tagspaces.org'
  license :affero

  app 'TagSpaces.app'
end
