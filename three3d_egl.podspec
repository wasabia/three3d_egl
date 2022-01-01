Pod::Spec.new do |spec|
    spec.name         = 'three3d_egl'
    spec.version      = '0.1.4'
    spec.authors      = { 
      'wasabia' => 'themorecolor@gmail.com'
    }
    spec.license      = { 
      :type => 'MIT',
      :file => 'LICENSE' 
    }
    spec.homepage     = 'https://github.com/wasabia/three3d_egl'
    spec.source       = { 
      :git => 'https://github.com/wasabia/three3d_egl.git', 
      :branch => 'main',
      :tag => spec.version.to_s 
    }
    spec.summary      = 'iOS egl for flutter_gl plugin'
    spec.source_files = '**/*.swift', '*.swift'
    spec.swift_versions = '5.0'
    spec.ios.deployment_target = '9.0'
    spec.osx.deployment_target = "10.10"
  end