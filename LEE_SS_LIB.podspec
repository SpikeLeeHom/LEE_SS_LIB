Pod::Spec.new do |s|
  s.name         = "LEE_SS_LIB"
  s.version      = "1.0.0"
  s.summary      = 'A short description of LEE_SS_LIB.'
  s.description  = <<-DESC
                  LEE_SS_LIB Http and Socks proxy based on Privoxy and Antinat.
                   DESC
  s.homepage     = "https://github.com/SpikeLeeHom/LEE_SS_LIB"
  s.license      = "GPLv2"
  s.author        = { "SpikeLeeHom" => "spikeleeyuuui@gmail.com" }
  s.ios.deployment_target = '9.0'
  s.source     = { :git => 'https://github.com/SpikeLeeHom/LEE_SS_LIB.git', :tag => s.version.to_s }
  s.libraries = 'resolv'
  s.platform                  = :ios
  s.ios.deployment_target     = '9.0'
  s.swift_version             = '4.0'
  s.compiler_flags = "-fcxx-modules"
  s.xcconfig = { 'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC'}
  s.public_header_files = 'Source/*.framework/Headers/{.h}'
  s.ios.vendored_frameworks   = 'Source/*.framework'
  s.dependency 'RealmSwift', '~> 2.10.2'

end
