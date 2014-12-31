cask :v1 => 'tvrenamer' do
  version '0.6'
  sha256 'fe38d8f7fab69bc54673ef9822b01401d5d72453865842f27023ecd7de4a531a'

  url "https://github.com/tvrenamer/tvrenamer/releases/download/v#{version}/TVRenamer-#{version}-osx64.zip"
  homepage 'http://tvrenamer.org'
  license :gpl

  app "TVRenamer-#{version}.app"

  caveats <<-EOS.undent
    #{token} requires a Java JRE to be installed. You should be prompted to install
    Java on the first execution if it is not already present.
  EOS
end
