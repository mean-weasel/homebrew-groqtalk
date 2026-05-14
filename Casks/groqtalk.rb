cask "groqtalk" do
  version "1.10.0"
  sha256 "7a4fda342f1b53aba1db45cd02c1fa06e818f6f62c99a9421fc0aef8e4e94c8c"

  url "https://github.com/mean-weasel/groqtalk/releases/download/v1.10.0/GroqTalk-1.10.0-macos.dmg"
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
