cask 'utox' do
  version '0.7.0'
  sha256 'a982ec72789fae301a80bade047235572e6c636f9216ded6347e75130ba64821'

  # github.com/GrayHatter/uTox was verified as official when first introduced to the cask
  url "https://github.com/GrayHatter/uTox/releases/download/v#{version}/uTox-#{version}.dmg"
  appcast 'https://github.com/GrayHatter/uTox/releases.atom',
          checkpoint: '37973a7993f280cb6b634f96c083be3256d775d6a87b6953ac56f17530bd1fef'
  name 'uTox'
  homepage 'https://www.tox.chat'
  license :oss

  app 'uTox.app'
end
