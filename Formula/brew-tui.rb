class BrewTui < Formula
  desc "Visual TUI for Homebrew package management"
  homepage "https://github.com/MoLinesGitHub/Brew-TUI"
  url "https://registry.npmjs.org/brew-tui/-/brew-tui-0.5.1.tgz"
  sha256 "c81a7add2a429ea9b5bf6d0ccc4703326e8d8f628e252098183db67a19dde96a"
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
