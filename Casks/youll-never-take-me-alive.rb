cask :v1 => 'youll-never-take-me-alive' do
  version '1.0.1'
  sha256 'e5fe98b1a0e89084f87e4646e3ec1159019b384bbd5a9ea71b92fcc2612f49e5'

  url "https://github.com/iSECPartners/yontma-mac/releases/download/#{version}/yontma-#{version}.dmg"
  appcast 'https://github.com/iSECPartners/yontma-mac/releases.atom'
  name 'You\'ll Never Take Me Alive!'
  name 'YoNTMA'
  homepage 'https://github.com/iSECPartners/yontma-mac'
  license :oss

  app 'You\'ll Never Take Me Alive!.app'
end
