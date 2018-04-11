
Pod::Spec.new do |s|
  s.name        = "KituraContracts"
  s.version     = "0.0.20"
  s.summary     = "KituraContracts is a library containing type definitions shared by client and server"
  s.homepage    = "https://github.com/IBM-Swift/KituraContracts"
  s.license     = { :type => "Apache License, Version 2.0" }
  s.author     = "IBM"
  s.module_name  = 'KituraContracts'

  s.requires_arc = true
  s.osx.deployment_target = "10.11"
  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  s.source   = { :git => "https://github.com/IBM-Swift/KituraContracts.git", :tag => s.version }
  s.source_files = "Sources/KituraContracts/*.swift", "Sources/KituraContracts/CodableQuery/*.swift"
  s.pod_target_xcconfig =  {
        'SWIFT_VERSION' => '4.0.3',
  }
  s.subspec 'LoggerAPI' do |loggerapi|
        loggerapi.source_files = 'Sources/KituraContracts/LoggerAPI/*.swift'
  end
end