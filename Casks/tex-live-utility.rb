cask :v1 => 'tex-live-utility' do
  version '1.21'
  sha256 '51fb396fa1bcb73af575c653415d16f422d842a6f8029f75c85ce1a6e0f92cf0'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://raw.githubusercontent.com/amaxwell/tlutility/master/appcast/tlu_appcast.xml',
          :sha256 => '694b488a31563a89893342948372d62a1d082d810a9a59896be6d2e8b0462305'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'
  license :oss

  app 'TeX Live Utility.app'
end
