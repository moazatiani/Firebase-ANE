/*
 *  Copyright 2018 Tua Rua Ltd.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

import Foundation
import FreSwift
import FirebaseMLVision

public extension VisionBarcodeEmail {
    func toFREObject() -> FREObject? {
        guard let ret = FreObjectSwift(className: "com.tuarua.firebase.vision.BarcodeEmail") else { return nil }
        ret.address = address
        ret.body = body
        ret.subject = subject
        ret["type"] = type.rawValue.toFREObject()
        return ret.rawValue
    }
}

public extension Array where Element == VisionBarcodeEmail {
    func toFREObject() -> FREObject? {
        guard let ret = FREArray(className: "com.tuarua.firebase.vision.BarcodeEmail") else { return nil }
        for email in self {
            ret.push(email.toFREObject())
        }
        return ret.rawValue
    }
}
