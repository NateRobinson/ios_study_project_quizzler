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

