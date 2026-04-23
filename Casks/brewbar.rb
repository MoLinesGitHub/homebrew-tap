cask "brewbar" do
  version "0.2.0"
  sha256 "866a402bc8c9ada263c1480c735aff0cb226692f8a43ee6d1436c08881a5dd37"

  url "https://github.com/MoLinesGitHub/Brew-TUI/releases/download/v#{version}/BrewBar.app.zip"
  name "BrewBar"
  desc "macOS menu bar companion for Brew-TUI (Pro feature)"
  homepage "https://github.com/MoLinesGitHub/Brew-TUI"

  depends_on formula: "brew-tui"
  depends_on macos: ">= :sonoma"

  app "BrewBar.app"

  zap trash: [
    "~/Library/Preferences/com.molinesdesigns.brewbar.plist",
  ]
end
