import Foundation
import PlaygroundSupport

class FunctionHolder {
    var function: (()-> ())?
    deinit {
        print("*** FunctionHolder deinitialized ***")
    }
}

func testFunctionHolder() {
    let fh = FunctionHolder()
    fh.function = {
        print(fh)
    }
}

testFunctionHolder()

PlaygroundPage.current.finishExecution()
