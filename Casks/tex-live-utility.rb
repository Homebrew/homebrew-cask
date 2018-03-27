cask 'tex-live-utility' do
  version '1.32'
  sha256 '6e587b646ba1f6b74ceb42eaeaf03f21ac92457f263c098155b942bf171f6073'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://raw.githubusercontent.com/amaxwell/tlutility/master/appcast/tlu_appcast.xml',
          checkpoint: '80246f0d1b0ffccd1b025d77f4331df40e31fd6698a03d5d9cade7d892ea346e'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'

  auto_updates true

  app 'TeX Live Utility.app'

  zap trash: [
               '~/Library/Application Support/TeX Live Utility',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*',
             ]
end
