Pod::Spec.new do |s|

  s.name                  = "TICEModels"
  s.version               = "37.0.0"
  s.summary               = "Models to be used in TICE projects."
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.swift_version         = "5.1"
  s.license               = { :type => 'MIT', :file => 'LICENSE' }

  s.homepage              = "https://ticeapp.com"

  s.author                = { "Anbion" => "tice@anbion.de" }
  s.source                = { :git => "git@github.com:AnbionApps/tice-models.git", :tag => "#{s.version}" }

  s.source_files          = "Sources/**/*"

end
