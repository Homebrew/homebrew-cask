class Yojimbo < Cask
  version '4.0.3'
  sha256 '3d56523799db955ddf362e3b4b43a4a193b426ea76cf02d1647ecd56e5231c3b'

  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  homepage 'http://www.barebones.com/products/yojimbo/'
  license :unknown

  app 'Yojimbo.app'

  postflight do
    suppress_move_to_applications
  end
end
