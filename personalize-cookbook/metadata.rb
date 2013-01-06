maintainer       "Alex Gyoshev"
maintainer_email "alex@gyoshev.net"
license          "MIT"
description      "A cookbook for personalizing a web development box"
version          "0.1.1"

depends "user", ">= 0.0.0"
depends "git",  ">= 0.0.0"

supports "ubuntu"

recipe "personalize", "This recipe for personalizing the development box with your config files."
