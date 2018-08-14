cask 'vanilla' do
  version '1.0.8,24:1509661736'
  sha256 'cc7602ee07926519a38a57bca50b61451012e84aa0b7d5fb434e5a4c9ff63f3a'

  # devmate.com/net.matthewpalmer.Vanilla was verified as official when first introduced to the cask
  url "https://dl.devmate.com/net.matthewpalmer.Vanilla/#{version.after_comma.before_colon}/#{version.after_colon}/Vanilla-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/net.matthewpalmer.Vanilla.xml'
  name 'Vanilla'
  homepage 'http://matthewpalmer.net/vanilla/'

  app 'Vanilla.app'
end
