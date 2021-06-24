# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qf < Formula
  desc "Example QuickFIX/Go Applications."
  homepage "https://github.com/quickfixgo/examples"
  version "2.0.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ackleymi/examples/releases/download/v2.0.0/examples_2.0.0_Darwin_x86_64.tar.gz"
      sha256 "31f4090e3993218a0e30eb06362089c69e340d180020236b94aa8b4a0c9f9db9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ackleymi/examples/releases/download/v2.0.0/examples_2.0.0_Darwin_arm64.tar.gz"
      sha256 "d347582ec64fa54813c4c3d57fb09e9da13942570ac771f9d658dc1ab9ee0775"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ackleymi/examples/releases/download/v2.0.0/examples_2.0.0_Linux_x86_64.tar.gz"
      sha256 "26ed517f388ff13597e988bb69beee0d959bbc362368d616f1a132d196f2f60e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ackleymi/examples/releases/download/v2.0.0/examples_2.0.0_Linux_arm64.tar.gz"
      sha256 "221f54c28f84efcc2e2c8fdc164479dc34f51658e9146988bd72fb65e29c94c2"
    end
  end

  def install
    bin.install "examples"
  end

  plist_options :startup => false

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>KeepAlive</key>
    <dict>
      <key>SuccessfulExit</key>
      <false/>
    </dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>RunAtLoad</key>
    <true/>
    <key>WorkingDirectory</key>
    <string>#{var}</string>
    <key>StandardErrorPath</key>
    <string>#{var}/log/qtrn.log</string>
    <key>StandardOutPath</key>
    <string>#{var}/log/qtrn.log</string>
  </dict>
</plist>
  EOS
  end
end
