cask :v1 => 'typinator' do
  version '6.2'
  sha256 '4b9b3acc26716dbf01951043f0102489ffd32436cdad6820e382dbb5b1fa0eb6'

  url "http://www.ergonis.com/downloads/products/typinator/Typinator#{version.gsub('.', '')}-Install.dmg"
  homepage 'http://www.ergonis.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Typinator.app'

  # todo: replace with new assistive_devices stanza
  caveats do
    <<-EOS.undent
      To use #{@cask}, you may need to give it access to assistive
      devices (Accessibility).  For OS X Mavericks and Above:

        System Preferences / Security & Privacy / Privacy / Accessibility
    EOS
  end
end
