# 私有 tap 的 cask。发版改 version、两个 url、两个 sha256。
# url 前面的数字前缀每次发版都不同，不能用 #{version} 拼，只能整段替换。
cask "violoop" do
  version "0.7.27"

  on_arm do
    url "https://dqk7irzt7hqfw.cloudfront.net/public/release/178888107130852-Violoop-0.7.27-arm64.dmg"
    sha256 "bfdcb090d462dca9757fb36dd579a96232789c1f51309e3c3dfcf012e9fafc29"
  end
  on_intel do
    url "https://dqk7irzt7hqfw.cloudfront.net/public/release/17888811499644-Violoop-0.7.27-universal.dmg"
    sha256 "0697b8caee88044db932c59b53fb64838244eb72756e7a42c594206f2216eba3"
  end

  name "Violoop"
  desc "Violoop desktop client"
  homepage "https://release.violoop.ai"

  # 链接不可预测，禁用 livecheck，版本靠人改
  livecheck do
    skip "release URLs are not predictable"
  end

  app "Violoop.app"

  zap trash: [
    "~/Library/Application Support/Violoop",
    "~/Library/Preferences/ai.violoop.app.plist",
  ]
end
