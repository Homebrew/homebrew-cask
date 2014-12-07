cask :v1 => 'virustotaluploader' do
  version '1.3'
  sha256 '6009c81e0d87b64f56e64ff3137f37fe61ae3b9b792b3700b37e4c55473da5d4'

  url "https://www.virustotal.com/static/bin/VirusTotalUploader_#{version}.dmg"
  homepage 'https://www.virustotal.com/'
  license :unknown

  app 'VirusTotalUploader.app'
end
