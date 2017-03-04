cask 'xlifftool' do
  version '1.2'
  sha256 '5fe85b7e52219cf995756818a6c9dd7c0d7e4b6815dcf5078f20e7a359528faa'

  url "https://github.com/remuslazar/osx-xliff-tool/releases/download/v#{version}/XLIFFTool.app.zip"
  appcast 'https://github.com/remuslazar/osx-xliff-tool/releases.atom',
          checkpoint: '3d2a123a12bb38bceaf2840741860dc63565e4e7e2a675d85f72d6fa713c8b3f'
  name 'XLIFFTool'
  homepage 'https://github.com/remuslazar/osx-xliff-tool'

  app 'XLIFFTool.app'
end
