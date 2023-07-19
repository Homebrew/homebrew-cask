cask "term-notes" do
  version "1.0.2"
  sha256 "e1ae65286b64c3466d5749524c79df1063ec9db35b265f0359d24cc76397d88c"

  url "https://github.com/felipealfonsog/TermNotes/archive/refs/tags/v.#{version}.tar.gz"
  name "Term Notes"
  desc "Terminal-based note-taking application"
  homepage "https://github.com/felipealfonsog/TermNotes"

  depends_on formula: "gcc"
  depends_on formula: "vim"
  depends_on formula: "nano"

  binary "TermNotes-#{version}/term_notes", target: "term-notes"

  caveats <<~EOS
    'Term Notes' has been installed!

    You can run the program using 'term-notes'.

    Enjoy taking notes with 'Term Notes'!
  EOS
end
