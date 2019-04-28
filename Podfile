
# platform :ios, '10.0'

## 开发环境设置为 true
## 发布环境设置为 false
FLUTTER_DEBUG_APP=false

FLUTTER_APP_PATH=File.join(File.expand_path("..", Dir.pwd), 'flutter_qson')
eval(File.read(File.join(__dir__, 'flutterhelper.rb')), binding)


def comm_pods

    pod 'MJExtension', '~> 3.0.15.1'

end


target 'NativeFlutterDemo' do

 comm_pods


  target 'NativeFlutterDemoTests' do
    inherit! :search_paths

  end

  target 'NativeFlutterDemoUITests' do
    inherit! :search_paths

  end

end
