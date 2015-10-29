cask :v1 => 'tex-live-utility' do
  version '1.23'
  sha256 'a1641f61259268bc92a16ffeffd0260a6c93b6c70d095433c3b722b448cf9b6a'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://raw.githubusercontent.com/amaxwell/tlutility/master/appcast/tlu_appcast.xml',
          :sha256 => '6e65fee1213ce00e4a2b29db2a24596e12390dd4edefda060f65fc1d78007e09'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'
  license :oss

  app 'TeX Live Utility.app'
end
