cask 'texpad' do
  if MacOS.version <= :mountain_lion
    version '1.7.21'
    sha256 'cae312b89d25752917bf66572fd1c6b6722097b651abe9a1a1b399dc36493512'
  else
    version '1_7_35__127__f692f1d'
    sha256 '8fac75de22abea9846655342d74f84a95b8d9cfeba8f45af5a1af13a3226dc26'
  end

  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          checkpoint: '8f551d3e4cc0b4c543413591e04943e6013b331073b16fc08209bcd3a24051e3'
  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'

  depends_on macos: '>= :snow_leopard'

  app 'Texpad.app'
end
