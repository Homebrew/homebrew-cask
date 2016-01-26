cask 'yojimbo' do
  version '4.0.4'
  sha256 '1da84ee26dffc3812ccf8bd2d9323e1dbd058be04648bf127f7f023d92039ecb'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/BBSW-download/Yojimbo_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/Yojimbo.xml',
          checkpoint: '20b638968b9c3d76a362758135d6a537de3a669b0811b3edd946204b343d86f6'
  name 'Yojimbo'
  homepage 'http://www.barebones.com/products/yojimbo/'
  license :commercial

  app 'Yojimbo.app'

  postflight do
    suppress_move_to_applications
  end
end
