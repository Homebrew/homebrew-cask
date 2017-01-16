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
    version '6.1.4'
    sha256 '21e2089c52b6748ccced7dbad08902dd1103b2d47f15a617e367e2c52cdce0df'

    url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
    appcast 'https://smilesoftware.com/appcast/TextExpander6.xml',
            checkpoint: '69bab6951dde4f880ff69b810b9bd6d44d2783c2dd865e16b8d9460f15236040'
  end

  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap delete: '~/Library/Application Support/TextExpander/'
end
