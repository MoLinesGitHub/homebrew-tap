class BrewTui < Formula
  desc "Visual TUI for Homebrew package management"
  homepage "https://github.com/MoLinesGitHub/Brew-TUI"
  url "https://registry.npmjs.org/brew-tui/-/brew-tui-0.5.2.tgz"
  sha256 "1c01333c2f3c7cafc19826ec203d08d67b330f01e2e20b40d74243a42f145af6"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/brew-tui"
  end

  test do
    assert_match "Plan:", shell_output("#{bin}/brew-tui status")
  end
end
