cask "groqtalk" do
  version "1.9.0"
  sha256 "50fc019c54e4235ef1d54c35c88dd553fc13a5d81ed002e4319f3b114d676670"

  url "https://github.com/mean-weasel/groqtalk/releases/download/v1.9.0/GroqTalk-1.9.0-macos.dmg"
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
