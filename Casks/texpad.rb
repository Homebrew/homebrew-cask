cask 'texpad' do
  if MacOS.version <= :mountain_lion
    version '1.7.21'
    sha256 'cae312b89d25752917bf66572fd1c6b6722097b651abe9a1a1b399dc36493512'
  else
    version '1_7_34__123__53f8781'
    sha256 'b331dbe5f37540cb352b78c023c66914016b83d5fb7ffb9f944caa255f7bd58e'
  end

  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          checkpoint: 'eb1bce3688e13a6c0a3544a6362365d94d8010b6d30ff149a76f82d3c461d748'
  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'

  depends_on macos: '>= :snow_leopard'

  app 'Texpad.app'
end
