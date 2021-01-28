# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Squadron < Formula
  desc "CLI utility manage infrastructure as code with helm"
  homepage "https://github.com/foomo/squadron"
  version "0.8.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/foomo/squadron/releases/download/v0.8.5/squadron_0.8.5_darwin_amd64.tar.gz"
    sha256 "a6a25a9732c4a72740019ee6cf3527c9272366105dd0facab21f05f115e2ecf4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/foomo/squadron/releases/download/v0.8.5/squadron_0.8.5_linux_amd64.tar.gz"
    sha256 "9824379ec466fde479db4e59b83b15632ad5acef3053c827281dbb6b0e7f1952"
  end

  def install
    bin.install "squadron"
  end

  def caveats; <<~EOS
    squadron -h
  EOS
  end
end
