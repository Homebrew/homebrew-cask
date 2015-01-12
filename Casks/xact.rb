cask :v1 => 'xact' do
  version '2.35'
  sha256 'f1c587262b19e171845911ad1231e9295825d3ab592b75a6a571a5e76da8097a'

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  appcast 'http://xactupdate.scottcbrown.org/xACT.xml',
          :sha256 => 'fc41532e1aff82fbfd45fd7d9a65c5a5d661d536b535d36f3b0c3658b44f8d73'
  homepage 'http://xact.scottcbrown.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "xACT #{version}/xACT.app"
end
