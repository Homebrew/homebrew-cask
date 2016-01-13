cask 'typora' do
  version '0.9.8.1'
  sha256 '9bc95f071f7376004a74ab04a63bf46133669364bcc9467247aa84c42a6964d7'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          :checkpoint => 'a3811ff028f351f654e1b4a1f5e350345342c60fa46a8df5120dae99108bf686'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
