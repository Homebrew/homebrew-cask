cask 'tex-live-utility' do
  version '1.28'
  sha256 '5e5c115871f897e7c247babfd8049002ab16e0d3c89a1c84cccd72791ac0f941'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://raw.githubusercontent.com/amaxwell/tlutility/master/appcast/tlu_appcast.xml',
          checkpoint: '1c93aab71ce0a3ca7b9b6507b51fcdb84c08338e2cc11b93e0a3fce5e5019924'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'

  app 'TeX Live Utility.app'
end
