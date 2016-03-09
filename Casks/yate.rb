cask 'yate' do
  version '3.10.1'
  sha256 'd07883ff13bd9f9807d002358434b6704d4b6572ff85839c42a3f944cc8ba072'

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '803920ff3437490bc7f2793a41c3fad309522f22a73a6ebb3c2f207537924c98'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
