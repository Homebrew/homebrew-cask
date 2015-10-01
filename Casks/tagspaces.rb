cask :v1 => 'tagspaces' do
  version '1.12.0'

  if Hardware::CPU.is_32_bit?
    sha256 '9518d0cc6aaf6b02a492e93e64148faed826ecd902452fa15fb59bb50c0886ec'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx32.zip"
  else
    sha256 '316dc12af0cf78ec8d472a5749d9e54f82d1e8f532f908257f49d4c6f5bf6119'
    url "http://www.tagspaces.org/downloads/tagspaces-#{version}-osx64.zip"
    appcast 'https://github.com/tagspaces/tagspaces/releases.atom'
  end

  name 'TagSpaces'
  homepage 'http://www.tagspaces.org'
  license :affero

  app 'TagSpaces.app'
end
