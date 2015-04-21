cask :v1 => 'vivaldi' do
  version '1.0.156.2'
  sha256 '5bf824d69cc78746c0644b4b257e79adc49a4960ff690b3f7a09bca7f1c0d3a9'

  url "https://vivaldi.com/download/download.php?f=Vivaldi.#{version}.dmg"
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  app 'Vivaldi.app'
end
