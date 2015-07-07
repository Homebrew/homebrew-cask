cask :v1 => 'wasted' do
  version :latest
  sha256 :no_check

  url 'http://wasted.werk01.de/Wasted.zip'
  name 'WASTED'
  appcast 'http://wasted.werk01.de/appcast.xml'
  homepage 'http://wasted.werk01.de'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wasted.app'
end
