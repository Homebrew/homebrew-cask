cask :v1 => 'toau' do
  version :latest
  sha256 :no_check

  url 'http://toauapp.com/download/Toau.zip'
  appcast 'http://toauapp.com/up/updates.xml'
  name 'Toau'
  homepage 'http://toauapp.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Toau.app'
end
