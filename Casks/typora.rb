cask 'typora' do
  version '0.9.9.6.4'
  sha256 '5995a47e3882547eaf987f5d7a43e3a18c0a29abda1d48fc9ee7f42e0abe458b'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'dd8dad2777736108fe7b67ae76ab2e89f8adf3c14277c0c79346a015478ac1ff'
  name 'Typora'
  homepage 'https://typora.io'
  license :gratis

  app 'Typora.app'
end
