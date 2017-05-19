cask 'tomighty' do
  version '1.2'
  sha256 '0ebee4c2c913a75b15fed071d68c22c866a3d8436ad359eb2ee66e27d39b2214'

  # github.com/tomighty/tomighty-osx was verified as official when first introduced to the cask
  url "https://github.com/tomighty/tomighty-osx/releases/download/#{version}/Tomighty-#{version}.dmg"
  appcast 'https://github.com/tomighty/tomighty-osx/releases.atom',
          checkpoint: '5922749fe4f9ac3cba82bc9e36741814c9d43d3eacae96a5ff2dd179d2d74676'
  name 'Tomighty'
  homepage 'http://tomighty.org/'

  app 'Tomighty.app'
end
