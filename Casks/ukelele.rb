class Ukelele < Cask
  version '2.2.8'
  sha256 'e6200f418dee4ad10fa126536218086273ef8e896b95ede8ba73ddb42ed02ec3'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'http://scripts.sil.org/cms/scripts/render_download.php?site_id=nrsi&format=file&media_id=ukelele_su_feed&filename=ukelele_su_feed.xml'
  homepage 'http://scripts.sil.org/ukelele'

  app 'Ukelele.app'
end
