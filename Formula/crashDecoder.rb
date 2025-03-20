class Crashdecoder < Formula
  # 注意，这里的命名规则不是驼峰。而是，首字母大写，其余小写。
  # 否则会把报错
    # Error: No available formula with the name "mythkiven/tools/crashdecoder". Did you mean mythkiven/tools/crashDecoder?
    # In formula file: /opt/homebrew/Library/Taps/mythkiven/homebrew-tools/Formula/crashdecoder.rb
    desc "iOS崩溃日志分析和符号化工具"
    homepage "https://github.com/mythkiven/HomebrewScript/tree/main/iOSCrashDecoder-1.0.0"
    url "https://github.com/mythkiven/HomebrewScript/tree/main/iOSCrashDecoder-1.0.0/archive/v1.0.0.tar.gz"
    sha256 "72c823899c9b3320cdae8677e36bac5f12d85026b0d4e7b45d8eb906cdabf3f0"
    license "MIT"
    
    def install
      bin.install "bin/crashDecoder"
      bin.install "bin/crashDecoder.swift"
      
      # 创建Shell补全脚本。注意，只有用户安装了自动补全的插件，这里才会生效。
      bash_completion.install "completions/bash/crashDecoder"
      zsh_completion.install "completions/zsh/_crashDecoder"
    end
    
    test do
      system "#{bin}/crashDecoder", "--version"
    end
  end