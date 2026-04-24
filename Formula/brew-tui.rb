class BrewTui < Formula
  desc "Visual TUI for Homebrew package management"
  homepage "https://github.com/MoLinesGitHub/Brew-TUI"
  url "https://registry.npmjs.org/brew-tui/-/brew-tui-0.3.2.tgz"
  sha256 "f059289b2da407b726973fb2d1aa648b32b79444b1d18551c30243a58f230462"
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
