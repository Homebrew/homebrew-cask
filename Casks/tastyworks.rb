cask 'tastyworks' do
  version '0.27.0'
  sha256 'b6bfb74eee6b047f9b627efa9627361910c13f3039163d30f9abc4cce7a174bc'

  url "https://download.tastyworks.com/desktop/#{version}/tastyworks-#{version}.dmg"
  name 'tastyworks'
  homepage 'https://tastyworks.com/'

  app 'tastyworks.app'
end
