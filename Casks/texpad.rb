cask :v1 => 'texpad' do

  if MacOS.release >= :mavericks
    version '1.7.19'
    sha256 '7caba1e52fda572f32944fc52d37c2b1e2b0fb3b6794c930bc7cf247dd825316'
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
