cask 'textexpander' do
  if MacOS.version <= :snow_leopard
    version '3.4.2'
    sha256 '87859d7efcbfe479e7b78686d4d3f9be9983b2c7d68a6122acea10d4efbb1bfa'

    url "https://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  elsif MacOS.version <= :mavericks
    version '4.3.6'
    sha256 'ec90d6bd2e76bd14c0ca706d255c9673288f406b772e5ae6022e2dbe27848ee9'

    url "https://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  else
    version '6.2.1'
    sha256 'aed11d5a004c54c7841e07819dfe10dcbd4319acd32df641e60a858df10ed00b'

    url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
    appcast 'https://smilesoftware.com/appcast/TextExpander6.xml',
            checkpoint: 'c02b25c60c720805757b2e0a9a01d859f94c3402a00d025843433013a1a82a14'
  end

  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap trash: '~/Library/Application Support/TextExpander/'
end
