cask 'tapaal' do
  version '3.4.2'
  sha256 'cc36800792016561bf21554e4f8ac6844cb1949ec373979a8150ce144ffa2495'

  url "http://www.tapaal.net/fileadmin/download/tapaal-#{version.major_minor}/tapaal-#{version}-mac64.dmg"
  appcast 'http://www.tapaal.net/',
          checkpoint: '57f01612a1903e39f13bd13983bfb5867a1af27f67983cdd61e19ebff917f11d'
  name 'TAPAAL'
  homepage 'http://www.tapaal.net/'

  app 'Tapaal.app'
end
