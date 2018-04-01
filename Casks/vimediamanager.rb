cask 'vimediamanager' do
  version '0,7a15:c'
  sha256 '020ad0384093cc7846234f38e6e4016743368e1f83a462b0771e9471c2cae7ab'

  url "https://github.com/vidalvanbergen/ViMediaManager/releases/download/v#{version.after_comma.before_colon}/vimediamanager_v#{version.before_comma}.#{version.after_comma.before_colon}#{version.after_colon}.dmg"
  appcast 'https://github.com/vidalvanbergen/ViMediaManager/releases.atom',
          checkpoint: '238a92a1893bda5b37298493fc872f0055ffcfaf7815619b8d547ff838ab1510'
  name 'ViMediaManager'
  homepage 'https://github.com/vidalvanbergen/ViMediaManager'

  app 'ViMediaManager.app'
end
