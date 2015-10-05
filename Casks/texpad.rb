cask :v1 => 'texpad' do

  if MacOS.release >= :mavericks
    version '1.7.15'
    sha256 '9a1e68830a1ef55f45c4b4464d927786e6be6f3d5785299f6d7ed90ffd69f404'
    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.gsub('.','_')}.zip"
  elsif MacOS.release <= :mountain_lion && MacOS.release >= :snow_leopard
    version '1.6.14'
    sha256 '18fcbe93e77e5b5bc848172546962fcde397a26fd543efcc1054004369192f7e'
    url "https://download.texpadapp.com/apps/osx/updates/Texpad_#{version.gsub('.','_')}.zip"
  else
    # If the app is used on MacOS lower than Snow Leopard,
    # unexpected behaviour or failures can occur.
  end

  depends_on :macos => '>= :snow_leopard'

  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml',
          :sha256 => 'bc4c683c395fa35a46b17b1823f3c52480f445ddff2aa7f7fd1361da304dc72a'

  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'
  license :commercial

  app 'Texpad.app'
end
