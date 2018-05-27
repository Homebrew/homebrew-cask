cask 'tex-live-utility' do
  version '1.34'
  sha256 '57f34bec3802bae73509b817479aa7f0456abc67d509064080612227527233cb'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://github.com/amaxwell/tlutility/releases.atom',
          checkpoint: 'dbeaeacc30bd0740237bb1dca3fb87c5502bd8422a9d1990cec438142b0809d4'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'

  auto_updates true

  app 'TeX Live Utility.app'

  zap trash: [
               '~/Library/Application Support/TeX Live Utility',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*',
             ]
end
