cask 'tex-live-utility' do
  version '1.26'
  sha256 '2af336179817ede13108a4b883223072b0b999b0dff53b9edbc0ef6a704f1f52'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://raw.githubusercontent.com/amaxwell/tlutility/master/appcast/tlu_appcast.xml',
          checkpoint: '1057b8465bf967a864151e016ea8ca565a929d23827e520a409de4ce4b909ad4'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'

  app 'TeX Live Utility.app'
end
