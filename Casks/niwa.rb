cask "niwa" do
  version "1.3.13"
  sha256 "7cb379d320ac1893278f0ee980d2cce828bad4f98e4124bbdc3f4b7d910845de"

  url "https://github.com/saidjamesphilip/Niwa/releases/download/v#{version}/Niwa-#{version}-mac.zip"
  name "Niwa"
  desc "macOS menu bar productivity app with focus timer, tasks, notes, and gamification"
  homepage "https://niwa-app.pages.dev/"

  depends_on macos: ">= :sequoia"

  app "Niwa.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Niwa.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.niwa.app",
    "~/Library/Caches/com.niwa.app",
    "~/Library/Preferences/com.niwa.app.plist",
  ]
end
