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
    version '6.2'
    sha256 'cdc0de388bc5d9bab2c470fadf6af0c381970b324579cb34181961ca3dfbb4a1'

    url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
    appcast 'https://smilesoftware.com/appcast/TextExpander6.xml',
            checkpoint: '94ee2cd64e400f8ef6325aa07e7eb7cba5c7bcce995ccca35da56f6fb55dbc5f'
  end

  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap delete: '~/Library/Application Support/TextExpander/'
end
