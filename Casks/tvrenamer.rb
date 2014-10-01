class Tvrenamer < Cask
  url 'https://github.com/tvrenamer/tvrenamer/releases/download/v0.6/TVRenamer-0.6-osx64.zip'
  homepage 'http://tvrenamer.org'
  version '0.6'
  sha256 'fe38d8f7fab69bc54673ef9822b01401d5d72453865842f27023ecd7de4a531a'
  link "TVRenamer-#{@version}.app", :target => 'TVRenamer.app'

  caveats do
    puts <<-EOS.undent 
      #{@cask} requires a Java JRE to be installed. Mac OS X should prompt you to install
      Java on the first run if you don't already have it installed.
    EOS
  end
end
