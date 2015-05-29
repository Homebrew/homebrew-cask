cask :v1 => 'yojimbo' do
  version '4.0.3'
  sha256 '3d56523799db955ddf362e3b4b43a4a193b426ea76cf02d1647ecd56e5231c3b'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  name 'Yojimbo'
  appcast 'https://versioncheck.barebones.com/Yojimbo.xml',
          :sha256 => '20b638968b9c3d76a362758135d6a537de3a669b0811b3edd946204b343d86f6'
  homepage 'http://www.barebones.com/products/yojimbo/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Yojimbo.app'

  postflight do
    suppress_move_to_applications
  end
end
