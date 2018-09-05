cask 'tex-live-utility' do
  version '1.35'
  sha256 'e4ea26ad57bc66c0d7febd0e4755003e7537c11602dee4e6d4c4fb785140f2ac'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://github.com/amaxwell/tlutility/releases.atom'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'

  auto_updates true

  app 'TeX Live Utility.app'

  zap trash: [
               '~/Library/Application Support/TeX Live Utility',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*',
             ]
end
