cask "groqtalk" do
  version "1.12.0"
  sha256 "2f630fee780760bc3f0aef8a5d2aecbfbcd88d357cf5c7317d76b2a74991bd18"

  url "https://github.com/mean-weasel/groqtalk/releases/download/v1.12.0/GroqTalk-1.12.0-macos.dmg"
  name "GroqTalk"
  desc "Menu bar speech-to-text transcription powered by Groq"
  homepage "https://github.com/mean-weasel/groqtalk"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "GroqTalk.app"

  zap trash: [
    "~/Library/Application Support/com.neonwatty.GroqTalk",
    "~/Library/Preferences/com.neonwatty.GroqTalk.plist",
    "~/Library/Caches/com.neonwatty.GroqTalk",
  ]
end
