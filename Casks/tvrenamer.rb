cask :v1 => 'tvrenamer' do
  version '0.7.1'
  sha256 '51c56fca7ce361aed823d4b943a438f4d0b1d516620c4f8548cbefbff0ecf309'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/tvrenamer/tvrenamer/releases/download/#{version}/TVRenamer-#{version}-osx64.zip"
  appcast 'https://github.com/tvrenamer/tvrenamer/releases.atom'
  name 'TVRenamer'
  homepage 'http://tvrenamer.org'
  license :gpl

  app "TVRenamer-#{version}.app"

  caveats <<-EOS.undent
    #{token} requires a Java JRE to be installed. You should be prompted to install
    Java on the first execution if it is not already present.
  EOS
end
