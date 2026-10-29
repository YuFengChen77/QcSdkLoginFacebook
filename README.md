# QcSdkLoginFacebook 1.1.2

将本目录内容放入该模块独立 Git 仓库的根目录，按本模块版本发布 tag；不要把其他模块的包复制进来。

自有依赖：QcSdkCore，由 SPM 自动带上；第三方通过当前包声明的官方产品自动接入。

宿主链接 target 的 Other Linker Flags 添加 $(inherited) -ObjC；Unity 通常配置 UnityFramework。

地址未配齐时生成 Package.swift.template，修改 BinaryConfig.json 后重跑 CreateBinary.py。脚本不会上传、提交或发布。
