cask "groqtalk" do
  version "1.9.1"
  sha256 "7e0a121d16385c376d18cc64446b22e792528213c78a86be586b37d7275ec26b"

  url "https://github.com/mean-weasel/groqtalk/releases/download/v1.9.1/GroqTalk-1.9.1-macos.dmg"
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
