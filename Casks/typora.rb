cask 'typora' do
  version '0.9.8.1'
  sha256 '9bc95f071f7376004a74ab04a63bf46133669364bcc9467247aa84c42a6964d7'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          :sha256 => '21a1c1e52583199255f9f6453929acf29548b52d270e932d9edf20bdb85ad0fd'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
