cask "brewbar" do
  version "0.3.0"
  sha256 "f073323911271b1130687e085c13d0521c920a23121c7820b538575fe76e9794"

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
