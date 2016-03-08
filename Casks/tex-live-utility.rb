cask 'tex-live-utility' do
  version '1.23'
  sha256 'a1641f61259268bc92a16ffeffd0260a6c93b6c70d095433c3b722b448cf9b6a'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://raw.githubusercontent.com/amaxwell/tlutility/master/appcast/tlu_appcast.xml',
          checkpoint: '742b3acd8d7ac7ebee8e2ed90f4411216c3ba27a87eb4d7c3136ef380d36cde3'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'
  license :oss

  app 'TeX Live Utility.app'
end
