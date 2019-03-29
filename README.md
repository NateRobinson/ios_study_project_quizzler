#  iOS Study Project -> Quizzler

通过这个 Demo 项目，可以学到：

1. 在 Swift 中如何面向对象编程，构建 class 对象，并设置其 init 方法

2. 如何使用 UIAlertController 构建弹出框：

```swift
let alert = UIAlertController(title: "了不起！", message: "你已经完成了所有的题目，是否想重新开始？", preferredStyle: .alert)

let restartAction = UIAlertAction(title: "重新开始", style: .default, handler: {
(action) in self.startOver()
})

alert.addAction(restartAction)
present(alert, animated: false, completion: nil)
```

3. 如何在 Swift 中使用 Object-C 代码：
    1. 复制  Objective-C 到目录中，勾选 `copy items if needed` 和 `add to targes:xxx`
    2. Xcode 会提示让 `Create Bridging Header`，点击确定
    3. 在 xxx-Bridging-Header.h 文件中添加 `#import "ProgressHUD.h"` ,不然 Xcode 无法识别该 Objective-C 文件
    
