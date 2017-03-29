cask 'xlifftool' do
  version '1.2'
  sha256 '5fe85b7e52219cf995756818a6c9dd7c0d7e4b6815dcf5078f20e7a359528faa'

  url "https://github.com/remuslazar/osx-xliff-tool/releases/download/v#{version}/XLIFFTool.app.zip"
  appcast 'https://github.com/remuslazar/osx-xliff-tool/releases.atom',
          checkpoint: '09c7503b2114c075ce5f7e45a534932bbf902d2a9fda2fa9f6019fdfce9e4287'
  name 'XLIFFTool'
  homepage 'https://github.com/remuslazar/osx-xliff-tool'

  app 'XLIFFTool.app'
end
