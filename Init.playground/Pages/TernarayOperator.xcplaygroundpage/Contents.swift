import Foundation
import PlaygroundSupport
import UIKit

let view1 = UIView(frame: CGRect.zero)
let view2 = UIView(frame: CGRect.zero)
let i = 0

(i == 0 ? view1 : view2).backgroundColor = .red

PlaygroundPage.current.finishExecution()
