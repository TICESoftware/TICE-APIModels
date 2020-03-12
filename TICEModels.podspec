Pod::Spec.new do |s|

  s.name                  = "TICEModels"
  s.version               = "45.0.0"
  s.summary               = "Models to be used in TICE projects."
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.swift_version         = "5.1"
  s.license               = { :type => 'MIT', :file => 'LICENSE' }

  s.homepage              = "https://ticeapp.com"

  s.author                = { "TICE Software UG (haftungsbeschränkt)" => "contact@ticeapp.com" }
  s.source                = { :git => "git@github.com:TICESoftware/tice-models.git", :tag => "#{s.version}" }

  s.source_files          = "Sources/**/*"

end
