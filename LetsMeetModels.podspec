Pod::Spec.new do |s|

  s.name                  = "LetsMeetModels"
  s.version               = "12.0.0"
  s.summary               = "Models to be used in Let's Meet projects."
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.swift_version         = "5.0"
  s.license               = { :type => 'MIT', :file => 'LICENSE' }

  s.homepage              = "https://lets-meet.in"

  s.author                = { "Anbion" => "letsmeet@anbion.de" }
  s.source                = { :git => "git@github.com:AnbionApps/letsmeet-models.git", :tag => "#{s.version}" }

  s.source_files          = "Sources/**/*"

end
