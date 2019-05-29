cask 'textricator' do
  version '9.0.44'
  sha256 'd2dd8e8583da43281f6aabe8f80cb256f9a527d5ffacdf9126393352d26650c1'

  # repo1.maven.org/maven2/io/mfj/textricator was verified as official when first introduced to the cask
  url "https://repo1.maven.org/maven2/io/mfj/textricator/#{version}/textricator-#{version}-bin.tgz"
  appcast 'https://repo1.maven.org/maven2/io/mfj/textricator/'
  name 'Textricator'
  homepage 'https://textricator.mfj.io/'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/62500)
  shimscript = "#{staged_path}/textricator.wrapper.sh"
  binary shimscript, target: 'textricator'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      java -cp "#{staged_path}/textricator-#{version}/lib/*" ${JAVA_OPTS} io.mfj.textricator.cli.TextricatorCli "$@"
    EOS
  end
end
