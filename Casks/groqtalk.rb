cask "groqtalk" do
  version "1.11.0"
  sha256 "7905b508c87caa6ccb80a3c33b4918c1860cd5e9ac892d0dfd9ce5d49bd88bbc"

  url "https://github.com/mean-weasel/groqtalk/releases/download/v1.11.0/GroqTalk-1.11.0-macos.dmg"
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
