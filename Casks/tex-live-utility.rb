cask 'tex-live-utility' do
  version '1.26'
  sha256 '2af336179817ede13108a4b883223072b0b999b0dff53b9edbc0ef6a704f1f52'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://raw.githubusercontent.com/amaxwell/tlutility/master/appcast/tlu_appcast.xml',
          checkpoint: '7c168708a9c3f6274b033455830e2a3c8d7446a93ade7d9822f58addd9918cc4'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'

  app 'TeX Live Utility.app'
end
