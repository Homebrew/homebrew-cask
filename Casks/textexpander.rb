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
    version '6.1.5'
    sha256 'ec84751d2ce0216ec3812c024fa9ee68960a33066da9f5b75c991ebe40ce9d8f'

    url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
    appcast 'https://smilesoftware.com/appcast/TextExpander6.xml',
            checkpoint: 'a8f156cff887c70f0079c8be370ca54664678537be380622b99e0945097d27aa'
  end

  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap delete: '~/Library/Application Support/TextExpander/'
end
