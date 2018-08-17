cask 'vidcutter' do
  version '6.0.1'
  sha256 '33943d56de307b026554824bc9b06779428bd75e5197779897ee2b4952313961'

  # github.com/ozmartian/vidcutter was verified as official when first introduced to the cask
  url "https://github.com/ozmartian/vidcutter/releases/download/#{version.major_minor}.0/VidCutter-#{version}-macOS.dmg"
  appcast 'https://github.com/ozmartian/vidcutter/releases.atom'
  name 'VidCutter'
  homepage 'https://vidcutter.ozmartians.com/'

  app 'VidCutter.app'
end
