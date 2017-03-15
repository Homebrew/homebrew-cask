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
    version '6.1.7'
    sha256 'af4dd54b76a7fcea8aeaae22a5089aa4c7d39e98e9a638cee586a11939b9e2bc'

    url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
    appcast 'https://smilesoftware.com/appcast/TextExpander6.xml',
            checkpoint: 'a9d6a39d320401e7ce135671db55ee2fe63f88bbbf0e9939a50feb1ba11c62cf'
  end

  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap delete: '~/Library/Application Support/TextExpander/'
end
