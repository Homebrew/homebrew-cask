cask 'writefull' do
  version '3.0.0-beta10-patch2'
  sha256 'a6690158f67ff3e107c37f92995b5f3cb4757d306025c352bcbb39dca7549cdb'

  # github.com/paraphrase-ai/writefull-releases was verified as official when first introduced to the cask
  url "https://github.com/paraphrase-ai/writefull-releases/releases/download/#{version}/Writefull.dmg"
  appcast 'https://github.com/paraphrase-ai/writefull-releases/releases.atom',
          checkpoint: '7c9ae4a6c5ebb22eb50af62f4167c813c76da523a9743fd266fb45bff0a810c6'
  name 'Writefull'
  homepage 'https://writefullapp.com/'

  app "Writefull_#{version.major}beta.app"
end
