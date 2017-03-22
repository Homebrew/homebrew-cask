cask 'vimediamanager' do
  version '0,7a14:c'
  sha256 '2fb3dc8b5d2c5ab40a34e18c0860da98d1b92bac673f8a134bfca82cf013714a'

  url "https://github.com/vidalvanbergen/ViMediaManager/releases/download/v#{version.after_comma.before_colon}/vimediamanager_v#{version.before_comma}.#{version.after_comma.before_colon}#{version.after_colon}.dmg"
  appcast 'https://github.com/vidalvanbergen/ViMediaManager/releases.atom',
          checkpoint: '691bcae2d5e238bf242193f5e6191a759b810766a832de3e93eebaa59a6898c4'
  name 'ViMediaManager'
  homepage 'https://github.com/vidalvanbergen/ViMediaManager'

  app 'ViMediaManager.app'
end
