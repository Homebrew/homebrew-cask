cask 'utox' do
  version '0.7.0'
  sha256 'a982ec72789fae301a80bade047235572e6c636f9216ded6347e75130ba64821'

  # github.com/GrayHatter/uTox is the official download host per the vendor homepage
  url "https://github.com/GrayHatter/uTox/releases/download/v#{version}/uTox-#{version}.dmg"
  name 'uTox'
  homepage 'https://www.tox.chat'
  license :oss

  app 'uTox.app'
end
