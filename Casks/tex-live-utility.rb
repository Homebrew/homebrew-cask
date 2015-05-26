cask :v1 => 'tex-live-utility' do
  version '1.19'
  sha256 'ef6beecc42d6b194f18795b46951bf274a5c838d8192f56e4437225af56e2820'

  url 'https://github.com/amaxwell/tlutility/releases/download/1.19/TeX.Live.Utility.app-1.19.tar.gz'
  appcast 'https://raw.githubusercontent.com/amaxwell/tlutility/master/appcast/tlu_appcast.xml',
          :sha256 => '9ca9e537751be33f6757984dd7d1d28a84d680bddb53c37fc7942adcd72b0eca'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'
  license :oss

  app 'TeX Live Utility.app'
end
