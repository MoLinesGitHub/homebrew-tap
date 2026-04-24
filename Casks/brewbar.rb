cask "brewbar" do
  version "0.3.1"
  sha256 "2161fe509781980f9e943cccd91c37b3de73eab1dcdae6a3d557736facd3fd9e"

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
