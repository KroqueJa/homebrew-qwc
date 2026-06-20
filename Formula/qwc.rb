  class Qwc < Formula
    desc "A utility to count things. Quickly."
    homepage "https://github.com/KroqueJa/qwc"
    version "0.2.1"
    license "MIT"

    on_macos do
      on_arm do
        url "https://github.com/KroqueJa/qwc/releases/download/v#{version}/qwc-macos-arm64.tar.gz"
        sha256 "8796b6e53ce038a9b0a125340c645fe56c282066318838933cb4a30dfe3b4f38"
      end
    end

    on_linux do
      on_intel do
        url "https://github.com/KroqueJa/qwc/releases/download/v#{version}/qwc-linux-x86_64.tar.gz"
        sha256 "7f2fb282c1b3d4caa118deddb92385485de6dda1d4323cc319ad70f42d4dc152"
      end
    end
  
    def install
      bin.install "qwc"
    end

    test do
      assert_match "qwc", shell_output("#{bin}/qwc --version")
    end
  end
