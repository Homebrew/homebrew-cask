cask 'vidcutter' do
  version '6.0.0'
  sha256 '33e18085470fc241373fb4f1b9cb8d2caebba2f3a1a4f5bb57da339d94d198e6'

  # github.com/ozmartian/vidcutter was verified as official when first introduced to the cask
  url "https://github.com/ozmartian/vidcutter/releases/download/#{version}/VidCutter-#{version}-macOS.dmg"
  appcast 'https://github.com/ozmartian/vidcutter/releases.atom'
  name 'VidCutter'
  homepage 'https://vidcutter.ozmartians.com/'

  app 'VidCutter.app'
end
