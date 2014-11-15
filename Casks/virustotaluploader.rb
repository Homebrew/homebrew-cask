cask :v1 => 'virustotaluploader' do
  version '1.1'
  sha256 'e757f8eb49592dfe67169a5582bcc3cca01c8ecc6634853398813a2aa92f24a7'

  url "https://www.virustotal.com/static/bin/VirusTotalUploader_#{version}.dmg"
  homepage 'https://www.virustotal.com/'
  license :unknown

  app 'VirusTotalUploader.app'
end
