Pod::Spec.new do |s|
  s.name         = 'TurboAdTakuAdapter'    # Advista Taku适配器
  s.version      = '1.0.0'    # Advista Taku适配器
  s.summary      = 'Turbo Adapter for Taku'   # 库的描述信息
  s.homepage     = 'https://ad.qm.com.cn/#/'  
  s.license      = 'MIT'   # 固定
  s.authors      = {'lee' => '417151840@qq.com'}  # 作者 => 邮箱
  s.platform     = :ios, '12.0'    # iOS版本最低限制
  s.source       = {:git => 'https://github.com/turboyjtx/TestSDK.git', :tag => '1.0.0'}     # 前部分是库在GitHub上的地址  后边意思是tag与库version一致
  # s.source_files = 'reqSetting00.framework/Headers/**/*.{h,m}'  # 路径
  s.vendored_frameworks= 'TurboAdTakuAdapter.framework'

  s.frameworks   = 'Foundation' # 依赖框架
  s.requires_arc = true   # arc
# 下面这段是推荐的 xcconfig 防止 simulator 构建失败
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }

  s.dependency 'AnyThinkiOS', '>= 6.5.34'
  s.dependency 'UBiXMerakSDK', '2.12.1'
end
