class CrashDecoder < Formula
    desc "iOS崩溃日志分析和符号化工具"
    homepage "https://github.com/mythkiven/HomebrewScript/tree/main/iOSCrashDecoder-1.0.0"
    url "https://github.com/mythkiven/HomebrewScript/tree/main/iOSCrashDecoder-1.0.0/archive/v1.0.0.tar.gz"
    sha256 "6a1d1da4d0773fd6da5ce625e49869bdb9ef8d8dbc495208326c9e62b470cc7b"
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