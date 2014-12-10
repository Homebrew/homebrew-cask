cask :v1 => 'wraparound' do
  version '2.0b2'
  sha256 'f156dfa65dad43d38cb3b0f8febd8de9711f4794bb166a293ced93860ebf7879'

  url "http://www.digicowsoftware.com/downloads/Wraparound#{version}-2010.zip"
  appcast 'http://www.digicowsoftware.com/appcast/'
  homepage 'http://www.digicowsoftware.com/detail?_app=Wraparound'
  license :unknown    # todo: improve this machine-generated value

  app 'Wraparound.app'
end
