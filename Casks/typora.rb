cask 'typora' do
  version '0.9.9.2.5'
  sha256 'd0925f78c43c18a61b63ead0cbd6fcec80c3e5ab081366d85492b6badc570527'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'adacf54f5c1b70945361714fdaf149d80bf079796ed3891255cc3e5c99553959'
  name 'Typora'
  homepage 'http://typora.io'
  license :gratis

  app 'Typora.app'
end
