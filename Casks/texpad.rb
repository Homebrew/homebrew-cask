cask 'texpad' do
  if MacOS.version <= :mountain_lion
    version '1.7.21'
    sha256 'cae312b89d25752917bf66572fd1c6b6722097b651abe9a1a1b399dc36493512'
  else
    version '1.7.32__104__a6eb552'
    sha256 'f43883c2efd95d59a04e0bef0d3f847cdad8a779ee5f0f2f490fea12994d9fe2'
  end

  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.dots_to_underscores}.zip"
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          checkpoint: 'c71e243eb741d3b9fa44c7b649a78b564c79ea6038e98249b0905d11f2b1616e'
  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'

  depends_on macos: '>= :snow_leopard'

  app 'Texpad.app'
end
