cask :v1 => 'totals' do
  version '3.0.17'
  sha256 '23136083cdf528cf6883608c02c23d4881dd94a9e6c500a1d18e3626579d17d3'

  url "http://www.kedisoft.com/dl/totals/Totals-#{version}.dmg"
  name 'Totals'
  appcast 'http://kedisoft.com/appcasts/appcast.php?app=totals3',
          :sha256 => 'bd168bbb85ad8a06d42295cb61ff9756c01572cdf90536d4f7401f5a43ed7f69'
  homepage 'http://www.kedisoft.com/totals/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Totals.app'
end
