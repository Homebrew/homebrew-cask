cask 'typora' do
  version '0.9.9.8.4'
  sha256 '35f46c0edca88b8e138b244a88aa82fd189d1b9b5db2bfd218a0e0b49566f2e2'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '31fff87c5e0d24d4e704e9eed012329a94e0cda5e0102bbb1be8be676ab02552'
  name 'Typora'
  homepage 'https://typora.io'

  app 'Typora.app'
end
