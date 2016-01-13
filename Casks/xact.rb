cask 'xact' do
  version '2.37'
  sha256 '3d0fcc4f35ec515f39230d6e30cb87e899a9a6a09f36984da1781ecdf0535e45'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          :checkpoint => '0757524cb17948d8eca9f6cc90e756444030a07d18d0c2fdc68b18c5c316dd40'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "xACT #{version}/xACT.app"
end
