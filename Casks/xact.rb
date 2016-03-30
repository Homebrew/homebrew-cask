cask 'xact' do
  version '2.37'
  sha256 '3d0fcc4f35ec515f39230d6e30cb87e899a9a6a09f36984da1781ecdf0535e45'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          checkpoint: 'f1f3ab3baf3119dd35478f31dfcac338cd707499821491961dc1f0c7649fbe77'
  name 'xACT'
  homepage 'http://xact.scottcbrown.org'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "xACT #{version}/xACT.app"
end
