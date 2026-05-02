class BrewTui < Formula
  desc "Visual TUI for Homebrew package management"
  homepage "https://github.com/MoLinesDesigns/Brew-TUI"
  url "https://registry.npmjs.org/brew-tui/-/brew-tui-0.8.0.tgz"
  sha256 "368c323aac441d67e9800d6a1155ceb458b48e634452ccafb668419ba6021c37"
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
