class Tvrenamer < Cask
  version '0.6'
  sha256 'fe38d8f7fab69bc54673ef9822b01401d5d72453865842f27023ecd7de4a531a'

  url "https://github.com/tvrenamer/tvrenamer/releases/download/v#{version}/TVRenamer-#{version}-osx64.zip"
  homepage 'http://tvrenamer.org'
  license :oss

  app "TVRenamer-#{version}.app"
  caveats do
    <<-EOS.undent
      #{@cask} requires a Java JRE to be installed. Mac OS X should prompt you to install
      Java on the first run if you don't already have it installed.
    EOS
  end
end
