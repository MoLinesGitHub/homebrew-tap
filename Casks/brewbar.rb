cask "brewbar" do
  version "0.3.2"
  sha256 "5cdcf6ff39387305eaede574e70d84ce6e24af762c101e24c18210ffbfae1944"

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
