cask "term-notes" do
  version "1.0.2"
  sha256 "e1ae65286b64c3466d5749524c79df1063ec9db35b265f0359d24cc76397d88c"

  url "https://github.com/felipealfonsog/TermNotes/archive/refs/tags/v#{version}.tar.gz"
  name "Term Notes"
  desc "Terminal-based note-taking application"
  homepage "https://github.com/felipealfonsog/TermNotes"

  depends_on formula: "gcc"
  depends_on formula: "vim"
  depends_on formula: "nano"

  def install
    bin.install "term_notes"
  end

  caveats <<~EOS
    'Term Notes' has been installed!

    To run the program, use the command:
      term-notes

    Enjoy taking notes with 'Term Notes'!
  EOS

  test do
    # Add your test logic here
  end
end
