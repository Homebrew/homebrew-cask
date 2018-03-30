cask 'tex-live-utility' do
  version '1.33'
  sha256 '8b8ac5cb9c4a8450e0fadfdf7d653f5a428eb8b4e4c1484cacd625b3f8acca8e'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://github.com/amaxwell/tlutility/releases.atom',
          checkpoint: 'c4e0ce62618c3c67cdf81425d379a4bda6bc3507ab82429da7f36a7fa3801249'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'

  auto_updates true

  app 'TeX Live Utility.app'

  zap trash: [
               '~/Library/Application Support/TeX Live Utility',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*',
             ]
end
