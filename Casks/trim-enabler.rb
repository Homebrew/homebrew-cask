class TrimEnabler < Cask
  url 'https://s3.amazonaws.com/groths/TrimEnabler.dmg'
  appcast 'http://groths.org/trimenabler/updates/update.xml'
  homepage 'http://www.groths.org/software/trimenabler/'
  version 'latest'
  sha256 :no_check
  link 'Trim Enabler.app'
end
