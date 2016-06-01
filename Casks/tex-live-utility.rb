cask 'tex-live-utility' do
  version '1.24'
  sha256 '470f969c30093f1c9d5c10437aef62ffa8df888ed575516833f23e309bfe1442'

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.tar.gz"
  appcast 'https://raw.githubusercontent.com/amaxwell/tlutility/master/appcast/tlu_appcast.xml',
          checkpoint: '2e2fd4ec0b661cfcc48f835b268d89d10f170324d526206712543c11a15179b8'
  name 'TeX Live Utility'
  homepage 'https://github.com/amaxwell/tlutility'
  license :oss

  app 'TeX Live Utility.app'
end
