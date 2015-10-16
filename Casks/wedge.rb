cask :v1 => 'wedge' do
  version :latest
  sha256 :no_check

  url 'http://wedge.natestedman.com/release/Wedge.app.zip'
  name 'Wedge'
  appcast 'http://wedge.natestedman.com/appcast.xml'
  homepage 'http://wedge.natestedman.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wedge.app'
end
