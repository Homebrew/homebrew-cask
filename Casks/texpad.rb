cask :v1 => 'texpad' do

  if MacOS.release >= :mavericks
    version '1.7.16'
    sha256 '65281263e1a4f8d28405fafaa042d5c76fdbe982c411321256aaf8d3c9e61961'
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
          :sha256 => 'c2ea6567dd4d3af33e44ac393906d034461124468c47cd05dc03f80e5d844bfb'

  name 'Texpad'
  homepage 'https://www.texpadapp.com/osx'
  license :commercial

  app 'Texpad.app'
end
