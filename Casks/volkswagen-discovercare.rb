cask 'volkswagen-discovercare' do
  version :latest
  sha256 :no_check

  url 'http://en.volkswagen.com/content/medialib/vwd4/global/discovercare/files/discovercare_macen/_jcr_content/renditions/rendition.download_attachment.file/discovercare_mac_en.zip'
  name 'Volkswagen DiscoverCare'
  homepage 'http://www.volkswagen.com/discovercare'

  container nested: 'DiscoverCare_v.1.0.3.dmg'

  app 'DiscoverCare.app'
end
