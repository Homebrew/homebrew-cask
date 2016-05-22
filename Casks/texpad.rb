cask 'texpad' do
  if MacOS.release <= :mountain_lion
    version '1.7.21'
    sha256 'cae312b89d25752917bf66572fd1c6b6722097b651abe9a1a1b399dc36493512'
  else
    version '1.7.27'
    sha256 '217cc9a02d65e1d5600a77b850ac3406ee8fda8de6f7811cdc16a977e6362322'
  end

  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.zip"
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          checkpoint: '2f7e957bd9023d9ba85fcbbd6717ba59dc5298b8410cf0d22ff7f478e95a67dd'
  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  app 'Texpad.app'
end
