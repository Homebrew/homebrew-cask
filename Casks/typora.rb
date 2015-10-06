cask :v1 => 'typora' do
  version :latest
  sha256 :no_check

  url 'http://typora.io/download/typora_latest.zip'
  name 'Typora'
  appcast 'http://typora.io/download/dev_update.xml',
          :sha256 => '5390abd96166ca4373b798c14971fe7a6ca51565fd4046d81e41fc75810cc906'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
