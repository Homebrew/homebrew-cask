cask 'texpad' do
  if MacOS.release >= :mavericks
    version '1.7.21'
    sha256 'cae312b89d25752917bf66572fd1c6b6722097b651abe9a1a1b399dc36493512'
  elsif MacOS.release <= :mountain_lion && MacOS.release >= :snow_leopard
    version '1.7.21'
    sha256 'cae312b89d25752917bf66572fd1c6b6722097b651abe9a1a1b399dc36493512'
  else
    # If the app is used on MacOS lower than Snow Leopard,
    # unexpected behaviour or failures can occur.
  end

  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.gsub('.', '_')}.zip"
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          checkpoint: '4842788b8dd25bb010c19f6ad6230e0288c371185fd4f581003213c0b64b3d5a'
  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  app 'Texpad.app'
end
