cask 'tvrenamer' do
  version '0.7.1'
  sha256 '51c56fca7ce361aed823d4b943a438f4d0b1d516620c4f8548cbefbff0ecf309'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/tvrenamer/tvrenamer/releases/download/#{version}/TVRenamer-#{version}-osx64.zip"
  appcast 'https://github.com/tvrenamer/tvrenamer/releases.atom',
          checkpoint: '4b7e78cab3a5dcf2fc2067ab6daa594740deb345929b1d77c8035cb454e19861'
  name 'TVRenamer'
  homepage 'http://tvrenamer.org'
  license :gpl

  app "TVRenamer-#{version}.app"

  caveats do
    depends_on_java
  end
end
