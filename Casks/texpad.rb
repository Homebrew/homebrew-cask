cask 'texpad' do
  if MacOS.version <= :mountain_lion
    version '1.7.21'
    sha256 'cae312b89d25752917bf66572fd1c6b6722097b651abe9a1a1b399dc36493512'
  else
    version '1.7.28'
    sha256 'f59a83923c70dd60ee2ad0acb07814b04ccc9b2ecea6d33d2340f49c54df70cc'
  end

  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.zip"
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          checkpoint: 'cfcc73295708a553ca7a637d5d465c038cd1b547fc604a0cebb2d05df70816dc'
  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  app 'Texpad.app'
end
