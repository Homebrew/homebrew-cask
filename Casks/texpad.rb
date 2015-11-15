cask :v1 => 'texpad' do

  if MacOS.release >= :mavericks
    version '1.7.18'
    sha256 '7bd9d72b548b8d580d69254005e759aa6fb2d81bb1e44a4fa801a6b859614bf7'
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
          :sha256 => 'e78733fb9529330962a6392283b7fdfc533adcf730cf66fbadb6d0445f2816a4'

  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'
  license :commercial

  app 'Texpad.app'
end
