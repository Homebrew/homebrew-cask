cask 'utox' do
  version '0.9.4'
  sha256 '5ffbcece988419fbaae75b2ae08eedb29137c623b5a2072a50bc0210cdb70d51'

  # github.com/GrayHatter/uTox was verified as official when first introduced to the cask
  url "https://github.com/GrayHatter/uTox/releases/download/v#{version}/uTox-#{version}.dmg"
  appcast 'https://github.com/GrayHatter/uTox/releases.atom',
          checkpoint: '53bad4195ff64a924043ab26c510c02514f9245abfec7a47002fb7b52305e144'
  name 'uTox'
  homepage 'https://www.tox.chat'
  license :oss

  app 'uTox.app'
end
