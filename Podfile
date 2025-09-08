# Uncomment the next line to define a global platform for your project
# platform :ios, '15.6'

# Flutter 모듈 경로 설정
flutter_application_path = '../new_feature_flutter_module'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')


target 'new_feature_flutter_ios' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  # Flutter pods 설치
  install_all_flutter_pods(flutter_application_path)
end

post_install do |installer|
  flutter_post_install(installer) if defined?(flutter_post_install)
end
