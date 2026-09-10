# homebrew-violoop

Violoop 桌面客户端的私有 Homebrew tap。由 `violoop-ansible` 剧本自动 tap 并安装，也可手动：

```bash
brew tap violoop/violoop <本仓库地址>
brew install --cask violoop/violoop/violoop
```

发新版本：改 `Casks/violoop.rb` 的 `version`、两个 `url`、两个 `sha256`（从 https://release.violoop.ai 取链接，`sha256sum` 算值），提交即可。
