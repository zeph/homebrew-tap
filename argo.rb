# This is an auto-generated file. DO NOT EDIT
class Argo < Formula
    desc "Get stuff done with container-native workflows for Kubernetes."
    homepage "https://argoproj.io"
    baseurl = "https://github.com/argoproj/argo/releases/download"
    version "v2.6.3"

    bottle :unneeded

    if OS.mac?
      kernel = "darwin"
      sha256 "05113734ac2efc1f89878483b3b2bc8f1118a551182c2cab6e3bf5b538613a64"
    elsif OS.linux?
      kernel = "linux"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    @@bin_name = "argo-" + kernel + "-amd64"
    url baseurl + "/v2.6.3/" + @@bin_name

    def install
      bin.install @@bin_name
      mv bin/ + @@bin_name.to_s, bin/"argo"
    end
end
