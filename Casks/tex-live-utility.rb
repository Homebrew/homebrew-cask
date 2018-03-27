cask 'tex-live-utility' do
  version '1.32'
  sha256 '6e587b646ba1f6b74ceb42eaeaf03f21ac92457f263c098155b942bf171f6073'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://github.com/amaxwell/tlutility/releases.atom',
          checkpoint: '982731a785be11020da9aee3d2814e08061a599d197cc394f2047f36deb23095'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'

  auto_updates true

  app 'TeX Live Utility.app'

  zap trash: [
               '~/Library/Application Support/TeX Live Utility',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*',
             ]
end
