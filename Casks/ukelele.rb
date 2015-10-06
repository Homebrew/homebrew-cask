cask :v1 => 'ukelele' do
  version '2.2.8'
  sha256 'e6200f418dee4ad10fa126536218086273ef8e896b95ede8ba73ddb42ed02ec3'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'https://scripts.sil.org/cms/scripts/render_download.php?site_id=nrsi&format=file&media_id=ukelele_su_feed&filename=ukelele_su_feed.xml',
          :sha256 => '523b410e4108f8da352d4bef2d953bc0bf2ae7c538b8841c6368ce528f0cb889'
  name 'Ukelele'
  homepage 'https://scripts.sil.org/ukelele'
  license :gratis

  app 'Ukelele.app'
end
