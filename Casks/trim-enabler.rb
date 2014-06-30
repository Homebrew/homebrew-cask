class TrimEnabler < Cask
  version 'latest'
  sha256 :no_check

  url 'https://s3.amazonaws.com/groths/TrimEnabler.dmg'
  appcast 'http://groths.org/trimenabler/updates/update.xml'
  homepage 'http://www.groths.org/software/trimenabler/'

  link 'Trim Enabler.app'
end
