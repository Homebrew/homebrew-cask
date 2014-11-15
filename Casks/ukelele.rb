cask :v1 => 'ukelele' do
  version '2.2.8'
  sha256 'e6200f418dee4ad10fa126536218086273ef8e896b95ede8ba73ddb42ed02ec3'

  url "https://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=Ukelele_#{version}&filename=Ukelele_#{version}.dmg"
  appcast 'http://scripts.sil.org/cms/scripts/render_download.php?site_id=nrsi&format=file&media_id=ukelele_su_feed&filename=ukelele_su_feed.xml',
          :sha256 => '5409cb8f49f6de2b0a4c2d638a637d2c460c79532914c57ae87adc4551ed8d16'
  homepage 'http://scripts.sil.org/ukelele'
  license :unknown

  app 'Ukelele.app'
end
