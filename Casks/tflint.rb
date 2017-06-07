cask 'tflint' do
  version '0.3.1'
  sha256 '3d33a41e43674a619dacd2291ff2c4bf54841ee77c9387b18b1a1ee61a8fa5d8'

  url "https://github.com/wata727/tflint/releases/download/v#{version}/tflint_darwin_amd64.zip"
  appcast 'https://github.com/wata727/tflint/releases.atom',
          checkpoint: '52dce49e383661fad10aa460f8d3d1cc51d4535fafe4ecd35fc299ec1953fa2b'
  name 'tflint', 'TFLint'
  homepage 'https://github.com/wata727/tflint'

  binary 'tflint'
end
