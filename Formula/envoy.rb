# Copyright 2021 Tetrate Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Envoy < Formula
    desc "Certified, compliant and conformant builds of Envoy proxy"
    homepage "https://getenvoy.io"
    url "https://dl.getenvoy.io/public/raw/files/getenvoy-envoy-1.18.3.p0.g98c1c9e-1p77.gb76c773-darwin-release-x86_64.tar.xz"
    version "1.18.3"
    sha256 "7c8f645da0347de155b0d598b6bf2df6dc2cfaf80e1b30b2d508e77f69c47ac4"

    head do
        url "https://dl.getenvoy.io/public/raw/files/getenvoy-envoy-1.18.3.p0.g98c1c9e-1p77.gb76c773-darwin-release-x86_64.tar.xz"
        sha256 "7c8f645da0347de155b0d598b6bf2df6dc2cfaf80e1b30b2d508e77f69c47ac4"
    end

    stable do
        url "https://dl.getenvoy.io/public/raw/files/getenvoy-envoy-1.18.3.p0.g98c1c9e-1p77.gb76c773-darwin-release-x86_64.tar.xz"
        sha256 "7c8f645da0347de155b0d598b6bf2df6dc2cfaf80e1b30b2d508e77f69c47ac4"
    end

    bottle :unneeded

    def install
        bin.install "bin/envoy"
    end

    test do
        # TODO(dio): more tests, e.g. CVE tests.
        assert_match /clean-getenvoy/, %x('#{bin}/envoy --version')
    end
end
