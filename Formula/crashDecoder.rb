class Crashdecoder < Formula
  # 注意，这里的命名规则不是驼峰。而是，首字母大写，其余小写。
  # 否则会把报错
    # Error: No available formula with the name "mythkiven/tools/crashdecoder". Did you mean mythkiven/tools/crashDecoder?
    # In formula file: /opt/homebrew/Library/Taps/mythkiven/homebrew-tools/Formula/crashdecoder.rb
    desc "iOS崩溃日志分析和符号化工具"
    homepage "https://github.com/mythkiven/HomebrewScript/tree/main/iOSCrashDecoder-1.0.0"
    url "https://github.com/mythkiven/HomebrewScript/releases/download/1.0.1/v1.0.0.tar.gz"
    # 这里的 url 不能直接使用 github 上的地址，需要使用 release 下载包的地址。
    # 否则brew安装，会报错 sha不匹配。因为每次github给brew的包，都会重新计算sha256。

    sha256 "be04509fba05f87c53627efb05b00bce00670e73837cebbff5155ce00cd77e65"
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