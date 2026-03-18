cask "niwa" do
  version "1.4.0"
  sha256 "42a517a8e0bb7254f7341fe7f7b24c044eea38f7fffc1f6f45d71009cf3b6983"

  url "https://github.com/saidjamesphilip/Niwa/releases/download/v#{version}/Niwa-#{version}-mac.zip"
  name "Niwa"
  desc "macOS menu bar productivity app with focus timer, tasks, notes, meetings, and gamification"
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
