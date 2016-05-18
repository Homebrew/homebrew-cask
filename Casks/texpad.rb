cask 'texpad' do
  if MacOS.release <= :mountain_lion
    version '1.7.21'
    sha256 'cae312b89d25752917bf66572fd1c6b6722097b651abe9a1a1b399dc36493512'
  else
    version '1.7.26'
    sha256 'b6769040aa090bf8dcbc5c9ec7a82f37e1b76a599f5e1254264da93161116efd'
  end

  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.zip"
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          checkpoint: '429d16b265fba65235563f930d3ab43cfc74ee30d1dcc69fe33cd2eb8fdb4c0f'
  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  app 'Texpad.app'
end
