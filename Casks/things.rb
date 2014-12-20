cask :v1 => 'things' do
  version :latest
  sha256 :no_check

  url 'https://culturedcode.com/things/download/'
  appcast 'http://downloads.culturedcode.com/things/download/Things_Updates.php'
  homepage 'http://culturedcode.com/things/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Things.app'
end
