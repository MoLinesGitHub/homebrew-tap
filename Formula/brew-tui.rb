class BrewTui < Formula
  desc "Visual TUI for Homebrew package management"
  homepage "https://github.com/MoLinesGitHub/Brew-TUI"
  url "https://registry.npmjs.org/brew-tui/-/brew-tui-0.2.0.tgz"
  sha256 "9868a88a16088402fa947571997bd0d03dd6ba499bcb5bd21b63ae4ff2535585"
  license "MIT"

  depends_on "node@18"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/brew-tui"
  end

  test do
    assert_match "Plan:", shell_output("#{bin}/brew-tui status")
  end
end
