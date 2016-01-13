cask 'texpad' do
  if MacOS.release >= :mavericks
    version '1.7.21'
    sha256 'cae312b89d25752917bf66572fd1c6b6722097b651abe9a1a1b399dc36493512'
  elsif MacOS.release <= :mountain_lion && MacOS.release >= :snow_leopard
    version '1.6.14'
    sha256 '18fcbe93e77e5b5bc848172546962fcde397a26fd543efcc1054004369192f7e'
  else
    # If the app is used on MacOS lower than Snow Leopard,
    # unexpected behaviour or failures can occur.
  end

  url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.gsub('.', '_')}.zip"
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          :checkpoint => '844bf719b4a21f3ef6cd896e23c7a3acd0f0615f03fb0dca89d8857538e451bf'
  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  app 'Texpad.app'
end
