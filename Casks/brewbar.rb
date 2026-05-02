cask "brewbar" do
  version "0.6.2"
  sha256 "3904c7866730d8f330dae97203806b3107ad0621e2109c1de626c5f4d780b5d9"

  url "https://github.com/MoLinesDesigns/Brew-TUI/releases/download/v#{version}/BrewBar.app.zip"
  name "BrewBar"
  desc "macOS menu bar companion for Brew-TUI (Pro feature)"
  homepage "https://github.com/MoLinesDesigns/Brew-TUI"

  depends_on formula: "brew-tui"
  depends_on macos: ">= :sonoma"

  app "BrewBar.app"

  zap trash: [
    "~/Library/Preferences/com.molinesdesigns.brewbar.plist",
  ]
end
