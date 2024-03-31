import Foundation
import PlaygroundSupport

enum AuthError: Error {
    case uncompleteData
    case invalidData
}

enum ServerError: Error {
    case invalidInput
    case badRequest(Int)
}

do {
    throw AuthError.invalidData
} catch AuthError.uncompleteData, AuthError.invalidData {
    print("*** Auth error happened  ***")
} catch ServerError.badRequest(let statusCode) where statusCode > 10 {
    print("*** Bad request with status code: \(statusCode) ***")
} catch let error as ServerError {
    print("*** Server error occured: \(error) ***")
} catch {
    print("*** Some unknown error occured ***")
}

PlaygroundPage.current.finishExecution()
