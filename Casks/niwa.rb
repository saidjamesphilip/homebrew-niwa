cask "niwa" do
  version "1.3.9"
  sha256 "PLACEHOLDER"

  url "https://github.com/saidjamesphilip/Niwa/releases/download/v#{version}/Niwa-#{version}-mac.zip"
  name "Niwa"
  desc "macOS menu bar productivity app with Pomodoro timer, tasks, notes, and gamification"
  homepage "https://niwa-app.pages.dev/"

  depends_on macos: ">= :sequoia"

  app "Niwa.app"

  zap trash: [
    "~/Library/Application Support/com.niwa.app",
    "~/Library/Caches/com.niwa.app",
    "~/Library/Preferences/com.niwa.app.plist",
  ]
end
