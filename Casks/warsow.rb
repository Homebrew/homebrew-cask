cask :v1 => 'warsow' do
  version '2.0'
  sha256 '07a4975c5c5abeb96ee9c11b53b363fb00aeba5d2a016563862538d28acf3763'

  url "https://www.warsow.gg/download?dl=warsow#{version.delete('.')}mac"
  name 'Warsow'
  homepage 'http://www.warsow.net/'
  license :gpl

  app 'Warsow.app'
end
