cask 'virustotaluploader' do
  version '1.3'
  sha256 '6009c81e0d87b64f56e64ff3137f37fe61ae3b9b792b3700b37e4c55473da5d4'

  url "https://www.virustotal.com/static/bin/VirusTotalUploader_#{version}.dmg"
  name 'VirusTotalUploader'
  homepage 'https://www.virustotal.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VirusTotalUploader.app'
end
