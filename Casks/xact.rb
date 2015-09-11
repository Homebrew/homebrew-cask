cask :v1 => 'xact' do
  version '2.36'
  sha256 '8b25b05bdcbee23f58866df3c69ea8d3d14236643a802316423c10c3e058e80f'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  name 'xACT'
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          :sha256 => 'cb5df4e8d11f77927b2ebc9dd0281426252f7feb8abb5ec62fa3819748344a45'
  homepage 'http://xact.scottcbrown.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "xACT #{version}/xACT.app"
end
