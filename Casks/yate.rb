cask 'yate' do
  version '3.11.0.1'
  sha256 'f48c3a8bbfceb1f50026f04336146060a5f424632655b21010962bf705ff1d9a'

  url 'https://2manyrobots.com/Builds/Yate/Yate.dmg'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml',
          checkpoint: '720585f616f141965c7d0ae605b891ddfa255abd0bf9dd20bacddb22579d9812'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'
  license :commercial

  app 'Yate.app'
end
